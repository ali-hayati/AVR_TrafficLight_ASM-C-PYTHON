void setup() {
  #define LED_G 13
  #define LED_Y 12
  #define LED_R 11
  pinMode(LED_G, OUTPUT);
  pinMode(LED_Y, OUTPUT);
  pinMode(LED_R, OUTPUT);
}

void loop() {
  digitalWrite(LED_R,LOW);
  digitalWrite(LED_G,HIGH);
  delay(2000);
  digitalWrite(LED_G,LOW);
  digitalWrite(LED_Y,HIGH);
  delay(500);
  digitalWrite(LED_Y,LOW);
  digitalWrite(LED_R,HIGH);
  delay(3000);
}
