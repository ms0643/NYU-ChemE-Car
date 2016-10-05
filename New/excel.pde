String timeStamp;
File path;
FileOutputStream out = null;
public String getTimeStamp() {
  
  String date = year() + "-" + month() + "-" + day() + " " + hour() + "h" 
  + minute() + "m" + second() + "s";
  
  return date;
  
}

public void initExcel() {
    
  masterSheet[0] = workbook.createSheet("1");
  timeStamp = getTimeStamp();
  path = new File(System.getProperty("user.home") + "/Documents/ChemecarExpData");
  
  try {
    if (!path.exists()) {
      path.mkdir();
    }
    
    out = new FileOutputStream(new File(path, timeStamp + ".xlsx"));
    
    
  } catch (Exception e) {
    e.printStackTrace();
  }
  
}

public void saveExcel() {
  try {
  
    out = new FileOutputStream(new File(path, timeStamp + ".xlsx"));
    
    workbook.write(out);
    out.close();
  } catch (Exception e) {
    e.printStackTrace();
  }
}

public void setCellStr(int sheetNum, int colNum, int rowNum, String value) {
  
  XSSFSheet s = masterSheet[sheetNum];
  Row r = s.getRow(rowNum);
  if (r == null) {
    
    r = s.createRow(rowNum);
  }
  Cell c = r.getCell(colNum);
  if (c == null) {
    
    c = r.createCell(colNum);
  }
  c.setCellValue(value);
}

public void initCalibration() {
  setCellStr(0,3,0, "CALIBRATION");
  setCellStr(0,3,1, "ELAPSED TIME, S");
  setCellStr(0,4,1, "LIGHT VALUE");
}