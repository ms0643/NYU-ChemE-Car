// Need G4P library
import g4p_controls.*;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.*;
import java.util.*;
import java.io.*;

//Initialize workbook and sheets
XSSFWorkbook workbook = new XSSFWorkbook();
XSSFSheet[] masterSheet = new XSSFSheet[100];

//Initialize data buffer
processing.data.Table table;

Timer timer = new Timer();

boolean test = true;

public void setup(){
  size(600, 600, JAVA2D);
  createGUI();
  customGUI();
  
  // Initialize excel sheet and open usb com port
  initExcel();
  openPort();
  
  // TODO: move to excel tab as a function
  setCellStr(0,0,0, "SUMMARY");
  setCellStr(0,0,1, "THRESHOLD");
  setCellStr(0,0,2, "TRIAL");
  setCellStr(0,1,2, "TIME, S");
}

public void draw(){
  background(230);
  if (test) {
    
    
    test = false;
    saveExcel();
  }  
  
  checkConnection();
  
  time_display.setText(String.valueOf(timer.getTime()));
  threshold_value.setText(val);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}



void exit() {
  try {
    
    
    out.close();
    println("Closing stream");
  } catch (Exception e) {
    println("Failed to close");
  }
  
  if (connect) {
    myPort.stop();
    println("Port closed");
  } else {
    println("No ports open");
  }
  println("Closing program");
  super.exit();
}