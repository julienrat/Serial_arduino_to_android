import com.yourinventit.processing.android.serial.*; // import de la librairie 
Serial port;  

void setup() {
  size(displayHeight, displayWidth);  
  println(Serial.list(this));    // print a list of available serial ports
  // choose the number between the [] that is connected to the Arduino
  port = new Serial(this, Serial.list(this)[0], 115200);  // make sure Arduino is talking serial at this baud rate
  port.clear();            // flush buffer
  port.bufferUntil('\n');  // set buffer full flag on receipt of carriage return
}

void draw() {  
  if(mousePressed){
   port.write("1"); 
  }  
}

void serialEvent(Serial port){ 
   background(0);
   String inData = port.readStringUntil('\n');
   text(inData,displayWidth/2,displayHeight/2);
}
