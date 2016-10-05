// FOR STOP REACTION TESTING PURPOSES ONLY
// DO NOT USE FOR COMPETITION

// To store the current mode of the experiment given by the Java program.
// Not really necessary but the program is expecting it.
char mode;

// To store photsensor reading.
int sensorReading;

// Pin for transistor switch for transmitting HIGH or LOW to turn on or off the circuit.
// This is not really needed for experimentation but could be attached to an LED in place
// of the chemical battery to give a visible and physical notification that the stop reaction is finished.
int switchPin = 3;

// Pin for receiving photosensor readings.
int sensorPin = 0;

// To store threshold.
int threshold = 0;


void setup() 
{
  // Put your setup code here, to run once:
 
  // Setting up switch pin to send signal == OUTPUT.
  pinMode(switchPin, OUTPUT); 
  
  // Open up usb port connection at a data rate of 9600 baud
  Serial.begin(9600);


}

void loop() {
  // Put your main code here, to run repeatedly:
  
  // Check if any data is coming through the usb port.
  // Not really necessary but the old java program expects it.
  if (Serial.available() > 0)
  {
    
    mode = Serial.read();

    if (mode == 'c')
    {
    
      Serial.println("A");
    }
   
  }

  // Get the reading from the photosensor.
  sensorReading = analogRead(sensorPin);
  
  switch (mode)
  {
    // For testing mode.
	case 'c':
      digitalWrite(switchPin, LOW);
      Serial.println(sensorReading);
      break;
    
	// Default to competition mode if not connected to a computer.
	default:
	  
	  // Set the threshold if threshold is set.
      if (threshold == 0) 
      {
        threshold = sensorReading - 30;
      }

	  // Turn on the circuit to the chemical battery or testing LED.
      digitalWrite(switchPin, LOW);
      
	  // If sensorReading is below or equal to the threshold, turn off the circuit.
      if (sensorReading <= threshold)
      {
        // Turn of the circuit to the chemical battery or testing LED.
        digitalWrite(switchPin, HIGH);
      } 
      break;
  }
  
}




