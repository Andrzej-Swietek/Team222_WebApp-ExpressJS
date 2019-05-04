#include <SPI.h>
#include <MFRC522.h>
#include <DS3231.h>
#define SS_PIN 10
#define RST_PIN 9

MFRC522 rfid(SS_PIN, RST_PIN);
DS3231  rtc(SDA, SCL);
MFRC522::MIFARE_Key key; 
byte nuidPICC[4];
byte keyByteThing[4] = {64,79,20,124};

void setup() { 
  Serial.begin(9600);
  SPI.begin(); 
  rtc.begin();
  pinMode(LED_BUILTIN, OUTPUT);
  rfid.PCD_Init(); 
  for (byte i = 0; i < 6; i++) {key.keyByte[i] = 0xFF;
  }
}

void loop() {
  if ( ! rfid.PICC_IsNewCardPresent())return;
  if ( ! rfid.PICC_ReadCardSerial())return;
  
  MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
  if(rfid.uid.uidByte[0] != nuidPICC[0]
  || rfid.uid.uidByte[1] != nuidPICC[1] 
  || rfid.uid.uidByte[2] != nuidPICC[2] 
  || rfid.uid.uidByte[3] != nuidPICC[3]){
      for (byte i = 0; i < 4; i++){
        nuidPICC[i] = rfid.uid.uidByte[i];
      }
      
      printDec(rfid.uid.uidByte, rfid.uid.size);
      
      if(nuidPICC[0] == keyByteThing[0] 
      && nuidPICC[1] == keyByteThing[1] 
      && nuidPICC[2] == keyByteThing[2] 
      && nuidPICC[3] == keyByteThing[3]){
        digitalWrite(LED_BUILTIN, HIGH);
    }
    
    delay(2000);
    digitalWrite(LED_BUILTIN, LOW);  
    for (byte i = 0; i < 4; i++){
      nuidPICC[i] = 0;
    }
  }
  rfid.PCD_StopCrypto1();
}

void printDec(byte *buffer, byte bufferSize) {
  Serial.println();
  Serial.print(rtc.getDOWStr());
  Serial.print(" ");
  Serial.print(rtc.getDateStr());
  Serial.print(" -- ");
  Serial.print(rtc.getTimeStr());
  Serial.print("   ID: ");
  for (byte i = 0; i < bufferSize; i++) {
    Serial.print(buffer[i], DEC);
    Serial.print(" ");
  
  }  
}
