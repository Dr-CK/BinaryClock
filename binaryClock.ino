/*
 * BINARY CLOCK
 * 
 * Christoffer Karlsson 2021
 * 
 * Shows time, date and temperature from a DS3231  
 * real time clock module on a binary LED display
 * using multiplexing and a bit shift register.
 * 
 * Time can be set over serial interface 
 * or by hardcoding it here.
 */

#include <Wire.h>
#include <DS3231.h>
#include <math.h>

DS3231 clock;
RTCDateTime dateTime;

const int nRows = 6, rowOnTime = 2500, //Multiplexing time in ms per row
  timeUpdateInterval = 1000, temperatureUpdateInterval = 64000,
  rowPin[nRows] = {2, 3, 5, 6, 8, 9}, //Output pins for each row
  dataPin = 10, latchPin = 11, clockPin = 12; //I2C pins for RTC

int temp = 0, illuminatedRow = 0; //Current temperature and illuminated row
//Last times that time/temperature/LEDs were updated
unsigned long lastTimeUpdate = 0, lastTempUpdate = 0, lastLEDUpdate = 0;

byte rowByte[nRows] = {0, 0, 0, 0, 0, 0};

// -- SETUP -- //
void setup()
{
  //Light up builtin LED during startup
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);

  //Start serial interface for option to set the clock
  Serial.begin(9600);
  Serial.println("Welcome to the Binary Clock!");
  Serial.println("To set a new date and time, send anything over the serial interface before the animation is complete...");

  //Start DS3231 clock module interface
  clock.begin();

  //Initiate pins
  for (int i = 0; i < nRows; i++) {
    //rowByte[i] = 0b00000001; //0b11111111; //For testing
    digitalWrite(rowPin[i], LOW);
    pinMode(rowPin[i], OUTPUT);
  }
  digitalWrite(dataPin, LOW);
  pinMode(dataPin, OUTPUT);
  digitalWrite(latchPin, LOW);
  pinMode(latchPin, OUTPUT);
  digitalWrite(clockPin, LOW);
  pinMode(clockPin, OUTPUT);

  //Show animation during startup
  showStartAnimation();

  //clock.setDateTime(__DATE__, __TIME__); //Set sketch compiling time
  //clock.setDateTime(2019, 02, 12, 17, 42, 10);

  //Set date and time over the serial interface if a byte has been sent
  if (Serial.available() > 0) {
    Serial.read();
    Serial.setTimeout(30000);
    const int datesize = 11, timesize = 8;
    char newdate[datesize + 1] = "Apr 08 2019\0",
                                 newtime[timesize + 1] = "14:30:00\0";

    Serial.println("Input the date using the following format: Apr 08 2019");
    waitForSerialUntilData();
    if (Serial.readBytes(newdate, datesize) == datesize) {
      Serial.println("Input the time using the following format: 14:30:00");
      waitForSerialUntilData();
      if (Serial.readBytes(newtime, timesize) == timesize) {
        clock.setDateTime(newdate, newtime);
        Serial.print("Date set to "); Serial.println(newdate);
        Serial.print("Time set to "); Serial.println(newtime);
      } else Serial.println("Problem reading time");
    } else Serial.println("Problem reading date");
  }

  Serial.println("Starting clock...");
  Serial.end();

  digitalWrite(LED_BUILTIN, LOW);
  
  updateTime();
  updateTemp();
}

// -- LOOP -- //
void loop()
{
  unsigned long ms = millis();

  //Update time once per second
  if (ms - lastTimeUpdate > timeUpdateInterval) {
    lastTimeUpdate = ms;
    updateTime();
  }
  //Update temperature once per temperature conversion period
  //But not on the same cycle as time in order to reduce flickering
  else if (ms - lastTempUpdate > temperatureUpdateInterval) {
    lastTempUpdate = ms;
    updateTemp();
  }

  //Write next row of LED multiplexing
  if (micros() - lastLEDUpdate > rowOnTime) {
    lastLEDUpdate = micros();
    writeLEDRow();
  }
}

//Wait for data over serial interface
//Remove any newline characters in the buffer
void waitForSerialUntilData() {
  while (true) {
    while (!Serial.available()) {}
    if (Serial.peek() == '\n' || Serial.peek() == '\r') Serial.read();
    else break;
  }
}

//Go to next row of LEDs and shift out the data
void writeLEDRow() {
  int previous = illuminatedRow;
  if (++illuminatedRow == nRows)
    illuminatedRow = 0;
  digitalWrite(latchPin, LOW);
  shiftOut(dataPin, clockPin, LSBFIRST, rowByte[illuminatedRow]);
  digitalWrite(rowPin[previous], LOW);
  digitalWrite(latchPin, HIGH);
  digitalWrite(rowPin[illuminatedRow], HIGH);
}

//Make one complete pass of all LED rows
void writeAllLEDs() {
  for (int i = 0; i < nRows; i++) {
    writeLEDRow();
    delayMicroseconds(rowOnTime);
    digitalWrite(rowPin[illuminatedRow], LOW);
  }
}

//Update time from clock module
void updateTime() {
  dateTime = clock.getDateTime();

  for (int i = 0; i < nRows; i++) {
    bitWrite(rowByte[i], 0, bitRead(dateTime.second, i));
    bitWrite(rowByte[i], 1, bitRead(dateTime.minute, i));
    bitWrite(rowByte[i], 2, bitRead(dateTime.hour, i));
    bitWrite(rowByte[i], 3, bitRead(dateTime.day, i));
    bitWrite(rowByte[i], 4, bitRead(dateTime.month, i));
    bitWrite(rowByte[i], 5, bitRead(dateTime.year, i)); //Year is split over two columns
    bitWrite(rowByte[i], 6, bitRead(dateTime.year, i + nRows));
  }
}

//Update temperature from clock module
void updateTemp() {
  temp = lroundf(clock.readTemperature() - 3.0f); //Empirical one-point calibration
  for (int i = 0; i < nRows; i++)
    bitWrite(rowByte[i], 7, bitRead(temp, i));
}

//Show an animation of all LEDs
void showStartAnimation() {
  //Up-and-down
  /*for (int i=0; i<nRows; i++) {
      rowByte[i] = 0xFF;
      for (int j=0; j<6; j++)
        writeAllLEDs();
    }
    for (int i=nRows-1; i>=0; i--) {
      rowByte[i] = 0;
      for (int j=0; j<6; j++)
        writeAllLEDs();
    }*/

  //Diagonal sweep
  for (int i = 1; i >= 0; i--)
    for (int j = 0; j < 13; j++) {
      for (int k = 0; k <= j && k < 8; k++)
        if (j - k < nRows)
          bitWrite(rowByte[j - k], k, i);
      for (int l = 0; l < 5; l++)
        writeAllLEDs();
    }
}
