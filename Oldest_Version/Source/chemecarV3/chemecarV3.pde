

import processing.serial.*;



Serial myPort;


char mode;

String val, timeStamp, startTimeStamp;

Table table, table2;

boolean mouseClicked = false;
boolean contact = false;
boolean initialConnection = false;
boolean initCal, initTrial;

int sensorData, startData;
int threshold = 900-200;
int rowCount = 0;
int colCount = -5;
int calCount = 0;
int trialCount = 1;
int setCount = 0;


StopWatch timer = new StopWatch();

Indicator status = new Indicator("Status:", 20, 40);
Indicator time = new Indicator("Time:", 20, 80);
Indicator light = new Indicator("Light", 20, 120);
Button calibrate = new Button("Calibrate", 20, 160);
Button newSet = new Button("New Set", 20, 200);
Button start = new Button("Start", 20, 240);
Button stop = new Button("Stop", 20, 280);
Indicator set = new Indicator("Set:", 20, 340);
Indicator trial = new Indicator("Trial:", 20, 380);
Indicator thresh = new Indicator("Threshold:", 20, 420);

void setup()
{
  size(500, 500);
  timeStamp = getTimeStamp();
  
  table = new Table();


  try
  {

    myPort = new Serial(this, Serial.list()[0], 9600);
    myPort.bufferUntil('\n');
    initialConnection = true;
  }
  catch (Exception e)
  {
    status.value = "Arduino not connected! Scanning...";
  }


}

void draw()
{

  update();
  
  background(0);
  
    
  status.draw();
  time.draw();
  light.draw();
  calibrate.draw();
  newSet.draw();
  start.draw();
  stop.draw();
  set.draw();
  trial.draw();
  thresh.draw();

}

void update()
{
  
  attemptContact();
  time.value = str(timer.getTime());
  light.value = str(sensorData);
  set.value = str(setCount);
  trial.value = str(trialCount);
  thresh.value = str(threshold);
  
  if (start.isMouseClicked())
  {
    
    mode = 't';
    timer.reset();
    timer.start();
    startTimeStamp = getHourStamp();
    println(startTimeStamp);
    stop.clicked = false;
    calibrate.clicked = false;
    
  } 
  else if (stop.isMouseClicked())
  {
    
    timer.stop();
    
    
    start.clicked = false;
    calibrate.clicked = false;
    if (mode == 't')
    {
      timer.stop();
      table.setInt(rowCount, 0, trialCount);
      table.setFloat(rowCount, 1, timer.getTime());
      trialCount++;
      rowCount++;
      
      saveTable(table, "data/" + timeStamp + ".csv");
    }
    mode = 's';
    timer.reset();
    saveTable(table, "data/" + timeStamp + ".csv");
  }
  else if (calibrate.isMouseClicked())
  {
    initCal = false;
    mode = 'c';
    rowCount = 0;
    timer.start();
    startTimeStamp = getHourStamp();
    start.clicked = false;
    stop.clicked = false;
    
    
  }
  else if (newSet.isMouseClicked())
  {
    initTrial = false;
    setCount++;
    trialCount = 1;
  }
  
  switch (mode)
  {
    case 't':
      trial();
      break;
      
    case 'c':
      
      calibrate();
      break;
    
    
  }
  
  
  


}

void serialEvent( Serial myPort)
{
  
  val = myPort.readStringUntil('\n');
  
  if (val != null) {
    
    val = trim(val);
    establishContact();
    sensorData = int(val);
    
  }
}





void mouseClicked()
{
  mouseClicked = true;
  
}