


public class Timer {
  private static final int STATE_UNSTARTED = 0;
  private static final int STATE_RUNNING = 1;
  private static final int STATE_STOPPED = 2;
  
  private int runningState = STATE_UNSTARTED;
  private float startTime = -1;
  private float stopTime = -1;

  
  public Timer() {
    super();
  }
  
  public void start() {
    if (this.runningState == STATE_UNSTARTED) {
    
      this.stopTime = -1;
      this.startTime = millis();
      this.runningState = STATE_RUNNING;
      
      
    } else {
      
      throw new IllegalStateException("Stopwatch must be stopped resetted before being started");
    }
  }
  
  public void stop() {
    
    if (this.runningState == STATE_RUNNING) {
      this.stopTime = millis();
      this.runningState = STATE_STOPPED;
      
      
    } else {
      
    }
  }
  
  public void reset() {
    this.runningState = STATE_UNSTARTED;
    this.startTime = -1;
    this.stopTime = -1;
   
   
  }
  
  
  public float getTime() {
    if (this.runningState == STATE_UNSTARTED) {
      return 0;
    } else if (this.runningState == STATE_RUNNING) {
      return (millis() - this.startTime)/1000;
    } else if (this.runningState == STATE_STOPPED) {
      return (this.stopTime - this.startTime)/1000;
    } else {
      return -1;
    }
  }
  
  public float getStartTime() {
    return this.startTime;
  }
  
  public float getStopTime() {
    return this.stopTime;
  }
  
  
}