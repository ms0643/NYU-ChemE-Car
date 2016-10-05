import processing.serial.*;

Serial myPort;
boolean connect = false;
boolean data = false;
int attemptCounter = 0;
int disconnectCounter = 0;

String val = "";



void openPort() {
  
  try {
    // Finds first available port and opens it
    myPort = new Serial(this, Serial.list()[0], 9600);
    //Buffers until new line character
    myPort.bufferUntil('\n');
    consoleoutput.setText("Port opened");
    println("Port opened");
    connect = true;
    attemptCounter = 0;
  } catch (Exception e) {
    connect = false;
    
    println("No device connected");
  }
}

// TODO: set maximum number of attempts or make a reconnect button
void checkConnection() {
  

  disconnectCounter++;
  if (disconnectCounter >= 100) {
    attemptCounter++;
    consoleoutput.setText("No incoming data");
    println("No incoming data");
    delay(1000);
    consoleoutput.setText("Attempt " + attemptCounter + ": Reconnecting now...");
    println("Attempt " + attemptCounter + ": Reconnecting now...");
    delay(1000);
    
    // Strings before this are not outputted for some reason
    consoleoutput.setText("No device connected");
    openPort();
    disconnectCounter = 0;
    
  }
}
void serialEvent(Serial myPort) {
  
  val = myPort.readStringUntil('\n');
  if (val != null) {

    disconnectCounter = 0;
    connect = true;
    val = trim(val);
    println(val);
  }
}
  