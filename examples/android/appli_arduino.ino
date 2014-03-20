
int command=0;

void setup() {
  Serial.begin(115200);
  pinMode(2, INPUT_PULLUP);
  pinMode(13,OUTPUT);
}

void loop() {
  if(Serial.available()){
    command=(Serial.read()); // reception de la commande android
  }
  int buttonState = digitalRead(2);
  Serial.println(buttonState); // envoi de la commande à android
  if(command==49){
    digitalWrite(13,HIGH);   
  }
  else{
    digitalWrite(13,LOW);
  }
  delay(100);
  command=0;

}

