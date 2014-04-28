void serialEvent() {
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char)Serial.read(); 
    if (inChar == '\n') {
      
      stringComplete = true;
      
    } else {
      
        inputString += inChar;
    }
  }
}
