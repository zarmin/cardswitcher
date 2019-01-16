const char ADDR_BIT0 = 7;
const char ADDR_BIT1 = 6;
const char ADDR_BIT2 = 5;
const char ADDR_BIT3 = 4;
const char ACTIVITY_LED = 3;
const char ACTIVE_RESISTOR_APIN = 5;

const char ADDR_MAX = 15;


void(* resetFunc) (void) = 0; 

void pinSetup() {
  pinMode(ADDR_BIT0, OUTPUT);
  pinMode(ADDR_BIT1, OUTPUT);
  pinMode(ADDR_BIT2, OUTPUT);
  pinMode(ADDR_BIT3, OUTPUT);

  pinMode(ACTIVITY_LED, OUTPUT);  


  digitalWrite(ADDR_BIT0, LOW);
  digitalWrite(ADDR_BIT1, LOW);
  digitalWrite(ADDR_BIT2, LOW);
  digitalWrite(ADDR_BIT3, LOW);

  digitalWrite(ACTIVITY_LED, LOW);
}

void errorDisplay() {
  Serial.println("Error occured, resetting in 6 seconds...");
  
  for (int i = 0; i < 6*10; i++) {
    digitalWrite(ACTIVITY_LED, HIGH);
    delay(50);
    digitalWrite(ACTIVITY_LED, LOW);
    delay(50);
  }

  Serial.println("RESET!");
  delay(500);
}

bool setAddress(char addr) {
  if (addr > ADDR_MAX) {
    return false;
  }
  
  digitalWrite(ADDR_BIT3, (addr & 8) ? HIGH : LOW);    
  digitalWrite(ADDR_BIT2, (addr & 4) ? HIGH : LOW);
  digitalWrite(ADDR_BIT1, (addr & 2) ? HIGH : LOW);
  digitalWrite(ADDR_BIT0, (addr & 1) ? HIGH : LOW); 

  return true;
}

// returns 
//  0: if zero device active
//  1: if one device active
//  2: if 2 or more device active
//  -1: if something wrong happened
char checkActiveDevices() {
  int val = analogRead(ACTIVE_RESISTOR_APIN); // 10 bit precision, 0 - 1023

  // nothing selected: pulled down to 0
  if (val < 100) { // should be low
    return 0;
  }

  // 1 selected: measured between: 1k + NPN T voltage drop (~0.24V) AND 2.2k  
  // calculated to approx (3.33 / 4.54) * 1024 = 751 
  // checking with 4% of precision
  if (val > 721 && val < 780) {
    return 1;
  } else if (val >= 780) { // more than 2 selected
    return 2;
  } else { // between 100 and 720 -> undefined state
    return -1;
  }
}

void systemCheck() {
  digitalWrite(ACTIVITY_LED, HIGH);
  
  char activeDevices[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  bool error = false;
  
  for (int i = 0; i <= ADDR_MAX; i++) {
    setAddress(i);
    char activeDevice = checkActiveDevices();

    if (activeDevice == 0) {
      // no device found, skip
    } else if (activeDevice == 1) {
      // valid active device
      activeDevices[i] = 1;
    } else if (activeDevice >= 2) {
      Serial.print("Collision on address: ");
      Serial.println(i, DEC);
      error = true;
    } else {
      Serial.print("Unexpected error while checking address (invalid resistor value): ");
      Serial.println(i, DEC);
      error = true;
    }
  }

  if (error) {
    errorDisplay();
    resetFunc();
    return;
  }

  for (int i = 0; i <= ADDR_MAX; i++) {
    if (activeDevices[i] == 1) {
      Serial.print("Device found on address: ");
      Serial.println(i, DEC);
    }
  }

  // blink one the activity led
  digitalWrite(ACTIVITY_LED, LOW);
  delay(500);
  digitalWrite(ACTIVITY_LED, HIGH);
  delay(500);
  digitalWrite(ACTIVITY_LED, LOW);
  
  Serial.println("Ready to use!");
}

void prompt() {
  Serial.print("Address? >> ");
}

void setup() {
  pinSetup();

  Serial.begin(9600);
  Serial.println("Serial init");

  systemCheck();

  prompt();
}

String inString = "";

void loop() {    
  char address = -1;
  
  while (Serial.available() > 0) {
    int inChar = Serial.read();    

    if (isDigit(inChar) || isAlpha(inChar)) {
      Serial.print((char)inChar); // echo
      inString += (char)inChar;
    }    
    if (inString.length() > 8) {
      inString = "";
      return;
    }
    if (inChar == '\n') {      
      if (inString.equalsIgnoreCase("reset")) {
        resetFunc();
        return;
      }
      address = (char)inString.toInt();
      inString = "";
      break; 
    }
  }
  
  if (address == -1) {
    delay(5);
    return;
  }

  digitalWrite(ACTIVITY_LED, HIGH);

  Serial.println();

  if (address > ADDR_MAX) {
    Serial.println("Address out of range");
    return;
  }

  setAddress(address);

  char activeDevice = checkActiveDevices();

  if (activeDevice == 0) {
    Serial.print("Set to address (no active device): ");
    Serial.println(address, DEC);
  } else if (activeDevice == 1) {
    Serial.print("Set to address (active device): ");
    Serial.println(address, DEC);
  } else if (activeDevice >= 2) {
    Serial.print("!!WARNING!! Set to address (MULTIPLE ACTIVE DEVICES, COLLISION DETECTED!): ");
    Serial.println(address, DEC);
  } else {
    Serial.print("!!ERROR!! Unexpected error while checking address (invalid resistor value): ");
    Serial.println(address, DEC);    
  }

  digitalWrite(ACTIVITY_LED, LOW);

  prompt();
}  
