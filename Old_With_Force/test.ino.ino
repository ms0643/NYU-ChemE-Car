
int sensorReading; //photosensor reading
char mode = '0';
int switchPin = 3; //transistor switch sending port
int sensorPin = 0; //photosensor receiving port
int statusPin = 13;
int startPin = 5; //start switch sending port
int endPin = 1; //
int threshold = 0; // PLEASE SET THIS
int forcePin = 1;
int force;
boolean forcetest = false;
boolean contact = false;


void setup() 
{
  // put your setup code here, to run once:
 
  pinMode(switchPin, OUTPUT); //transistor switch for battery to the motor
  pinMode(statusPin, OUTPUT);
  Serial.begin(9600);
   //NEED TO SET THIS ON DAY OF COMPETITION ACCORDING TO CALIBRATION DATA
  contact = false;


}

                                
 
  
void loop() {
  // put your main code here, to run repeatedly:
  // Set up a counter to pull from melody[] and beats[]
  
  if (Serial.available() > 0)
  {
    
    mode = Serial.read();

    if (mode == 'c')
    {
    
      Serial.println("A");
      contact = true;
    }
   
  }

  
  sensorReading = analogRead(sensorPin);
  force = analogRead(forcePin);
  
  switch (mode)
  {
    case 'c':
      digitalWrite(switchPin, LOW);
      Serial.println(sensorReading);
      break;
    default:

      
      Serial.println(force);
      while(threshold == 0) // BACKUP in case threshold is not set
      {

        threshold = sensorReading - 30;
      }

      
      
     

      digitalWrite(switchPin, LOW);
      
      if (sensorReading <= threshold)
      {
        
        digitalWrite(switchPin, HIGH);
      } 
      else {
        
      }
      break;
  }
  
}




