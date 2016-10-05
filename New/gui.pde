/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void start_button_click(GButton source, GEvent event) { //_CODE_:start_button:793630:
  println("start_button - GButton >> GEvent." + event + " @ " + millis());
  timer.start();
} //_CODE_:start_button:793630:

public void stop_button_click(GButton source, GEvent event) { //_CODE_:stop_button:788209:
  println("stop_button - GButton >> GEvent." + event + " @ " + millis());
  timer.stop();
} //_CODE_:stop_button:788209:

public void reset_button_click(GButton source, GEvent event) { //_CODE_:reset_button:912642:
  println("reset_button - GButton >> GEvent." + event + " @ " + millis());
  timer.reset();
} //_CODE_:reset_button:912642:

public void newset_button_click(GButton source, GEvent event) { //_CODE_:newset_button:785128:
  println("newset_button - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:newset_button:785128:

public void calibration_option_click(GOption source, GEvent event) { //_CODE_:calibration_option:239201:
  println("calibration_option - GOption >> GEvent." + event + " @ " + millis());

  initCalibration();
  saveExcel();
} //_CODE_:calibration_option:239201:

public void test_option_click(GOption source, GEvent event) { //_CODE_:test_option:982160:
  println("test_option - GOption >> GEvent." + event + " @ " + millis());
} //_CODE_:test_option:982160:

public void time_display_mod(GTextField source, GEvent event) { //_CODE_:time_display:807385:
  println("time_display - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:time_display:807385:

public void pI_conc_text_mod(GTextField source, GEvent event) { //_CODE_:pI_conc_text:540895:
  println("trial_description - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:pI_conc_text:540895:

public void comment_box_mod(GTextField source, GEvent event) { //_CODE_:comment_box:595086:
  println("comment_box - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:comment_box:595086:

public void sb_conc_text_mod(GTextField source, GEvent event) { //_CODE_:sb_conc_text:554727:
  println("sb_conc_text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:sb_conc_text:554727:

public void pI_volume_text_mod(GTextField source, GEvent event) { //_CODE_:pI_volume_text:853419:
  println("pI_volume_text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:pI_volume_text:853419:

public void sb_volume_text_mod(GTextField source, GEvent event) { //_CODE_:sb_volume_text:656370:
  println("sb_volume_text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:sb_volume_text:656370:

public void sa_drops_text_mod(GTextField source, GEvent event) { //_CODE_:sa_drops_text:564993:
  println("sa_drops_text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:sa_drops_text:564993:

public void starch_drop_text_mod(GTextField source, GEvent event) { //_CODE_:starch_drop_text:562328:
  println("starch_drop_text - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:starch_drop_text:562328:

public void current_set_change(GTextField source, GEvent event) { //_CODE_:current_set:982545:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:current_set:982545:

public void trial_number_change(GTextField source, GEvent event) { //_CODE_:trial_number:998833:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:trial_number:998833:

public void threshold_value_change(GTextField source, GEvent event) { //_CODE_:threshold_value:261005:
  println("textfield3 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:threshold_value:261005:

public void reset_label_click(GPanel source, GEvent event) { //_CODE_:reset_label:444863:
  println("panel1 - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:reset_label:444863:

public void manual_threshold_slider_mod(GCustomSlider source, GEvent event) { //_CODE_:manual_threshold_slider:450689:
  println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:manual_threshold_slider:450689:

public void consoleoutput_mod(GTextArea source, GEvent event) { //_CODE_:consoleoutput:971443:
  println("consoleoutput - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:consoleoutput:971443:

public void thesholdplot_click(GButton source, GEvent event) { //_CODE_:thresholdplot:331815:
  println("thresholdplot - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:thresholdplot:331815:

public void realtimeplot_click(GButton source, GEvent event) { //_CODE_:realtimeplot:733540:
  println("realtimeplot - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:realtimeplot:733540:

public void manualthresholdenter_mod(GTextField source, GEvent event) { //_CODE_:manualtthresholdenter:621818:
  println("manualtthresholdenter - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:manualtthresholdenter:621818:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  start_button = new GButton(this, 56, 140, 98, 30);
  start_button.setText("Start");
  start_button.setTextBold();
  start_button.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  start_button.addEventHandler(this, "start_button_click");
  stop_button = new GButton(this, 56, 196, 98, 30);
  stop_button.setText("Stop");
  stop_button.setTextBold();
  stop_button.setLocalColorScheme(GCScheme.RED_SCHEME);
  stop_button.addEventHandler(this, "stop_button_click");
  reset_button = new GButton(this, 541, 565, 52, 28);
  reset_button.setText("Reset");
  reset_button.setTextBold();
  reset_button.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  reset_button.addEventHandler(this, "reset_button_click");
  newset_button = new GButton(this, 56, 84, 98, 30);
  newset_button.setText("New Set");
  newset_button.setTextBold();
  newset_button.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  newset_button.addEventHandler(this, "newset_button_click");
  togGroup1 = new GToggleGroup();
  calibration_option = new GOption(this, 42, 14, 126, 28);
  calibration_option.setText("Calibration Mode");
  calibration_option.setTextBold();
  calibration_option.setOpaque(false);
  calibration_option.addEventHandler(this, "calibration_option_click");
  test_option = new GOption(this, 42, 42, 126, 28);
  test_option.setText("Test Mode");
  test_option.setTextBold();
  test_option.setOpaque(false);
  test_option.addEventHandler(this, "test_option_click");
  togGroup1.addControl(calibration_option);
  calibration_option.setSelected(false);
  togGroup1.addControl(test_option);
  time_display = new GTextField(this, 280, 42, 70, 30, G4P.SCROLLBARS_NONE);
  time_display.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  time_display.setOpaque(true);
  time_display.addEventHandler(this, "time_display_mod");
  pI_conc_text = new GTextField(this, 150, 270, 140, 20, G4P.SCROLLBARS_NONE);
  pI_conc_text.setPromptText("Enter KIO3 concentration here");
  pI_conc_text.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  pI_conc_text.setOpaque(true);
  pI_conc_text.addEventHandler(this, "pI_conc_text_mod");
  comment_box = new GTextField(this, 70, 420, 462, 84, G4P.SCROLLBARS_HORIZONTAL_ONLY | G4P.SCROLLBARS_AUTOHIDE);
  comment_box.setPromptText("Please enter any comments, if any, about this trial");
  comment_box.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  comment_box.setOpaque(true);
  comment_box.addEventHandler(this, "comment_box_mod");
  pi_label = new GLabel(this, 30, 260, 110, 40);
  pi_label.setText("[KIO3] (M)");
  pi_label.setTextBold();
  pi_label.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pi_label.setOpaque(false);
  sb_label = new GLabel(this, 308, 266, 110, 40);
  sb_label.setText("[NaHSO3] (M)");
  sb_label.setTextBold();
  sb_label.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  sb_label.setOpaque(false);
  sb_conc_text = new GTextField(this, 430, 270, 140, 20, G4P.SCROLLBARS_NONE);
  sb_conc_text.setPromptText("Enter NaHSO3 concentration here");
  sb_conc_text.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  sb_conc_text.setOpaque(true);
  sb_conc_text.addEventHandler(this, "sb_conc_text_mod");
  pI_volume_label = new GLabel(this, 30, 310, 110, 40);
  pI_volume_label.setText("KIO3 volume (mL)");
  pI_volume_label.setTextBold();
  pI_volume_label.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  pI_volume_label.setOpaque(false);
  sb_volume_label = new GLabel(this, 310, 310, 110, 40);
  sb_volume_label.setText("NaHSO3 Volume (mL)");
  sb_volume_label.setTextBold();
  sb_volume_label.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  sb_volume_label.setOpaque(false);
  pI_volume_text = new GTextField(this, 150, 320, 140, 20, G4P.SCROLLBARS_NONE);
  pI_volume_text.setPromptText("Enter KIO3 volume here");
  pI_volume_text.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  pI_volume_text.setOpaque(true);
  pI_volume_text.addEventHandler(this, "pI_volume_text_mod");
  sb_volume_text = new GTextField(this, 430, 320, 140, 20, G4P.SCROLLBARS_NONE);
  sb_volume_text.setPromptText("Enter NaHSO3 volume here");
  sb_volume_text.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  sb_volume_text.setOpaque(true);
  sb_volume_text.addEventHandler(this, "sb_volume_text_mod");
  sa_drops_label = new GLabel(this, 30, 370, 110, 40);
  sa_drops_label.setText("0.1 M Sulfuric Acid Drops");
  sa_drops_label.setTextBold();
  sa_drops_label.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  sa_drops_label.setOpaque(false);
  starch_drops_label = new GLabel(this, 310, 370, 110, 40);
  starch_drops_label.setText("Drops of Starch");
  starch_drops_label.setTextBold();
  starch_drops_label.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  starch_drops_label.setOpaque(false);
  sa_drops_text = new GTextField(this, 150, 380, 140, 20, G4P.SCROLLBARS_NONE);
  sa_drops_text.setPromptText("Enter # of H2SO4 drops here");
  sa_drops_text.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  sa_drops_text.setOpaque(true);
  sa_drops_text.addEventHandler(this, "sa_drops_text_mod");
  starch_drop_text = new GTextField(this, 430, 380, 140, 20, G4P.SCROLLBARS_NONE);
  starch_drop_text.setPromptText("Enter # of starch drops here");
  starch_drop_text.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  starch_drop_text.setOpaque(true);
  starch_drop_text.addEventHandler(this, "starch_drop_text_mod");
  current_set = new GTextField(this, 280, 98, 70, 30, G4P.SCROLLBARS_NONE);
  current_set.setText("Current Set");
  current_set.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  current_set.setOpaque(true);
  current_set.addEventHandler(this, "current_set_change");
  set_number = new GLabel(this, 196, 98, 84, 28);
  set_number.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  set_number.setText("Set:");
  set_number.setTextBold();
  set_number.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  set_number.setOpaque(true);
  trial_number = new GTextField(this, 280, 154, 70, 30, G4P.SCROLLBARS_NONE);
  trial_number.setText("Current Trial");
  trial_number.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  trial_number.setOpaque(true);
  trial_number.addEventHandler(this, "trial_number_change");
  trial = new GLabel(this, 196, 154, 84, 28);
  trial.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  trial.setText("Trial:");
  trial.setTextBold();
  trial.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  trial.setOpaque(true);
  threshold_value = new GTextField(this, 280, 210, 70, 30, G4P.SCROLLBARS_NONE);
  threshold_value.setText("Current Threshold");
  threshold_value.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  threshold_value.setOpaque(true);
  threshold_value.addEventHandler(this, "threshold_value_change");
  threshold_label = new GLabel(this, 196, 210, 84, 28);
  threshold_label.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  threshold_label.setText("Light Level:");
  threshold_label.setTextBold();
  threshold_label.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  threshold_label.setOpaque(true);
  elapsed_time_label = new GLabel(this, 196, 42, 84, 28);
  elapsed_time_label.setTextAlign(GAlign.RIGHT, GAlign.MIDDLE);
  elapsed_time_label.setText("Elapsed Time:");
  elapsed_time_label.setTextBold();
  elapsed_time_label.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  elapsed_time_label.setOpaque(true);
  manual_threshold_label = new GLabel(this, 390, 10, 84, 28);
  manual_threshold_label.setText("Manual Set Threshold");
  manual_threshold_label.setTextBold();
  manual_threshold_label.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  manual_threshold_label.setOpaque(true);
  reset_label = new GPanel(this, 379, 521, 154, 70, "Notes about reset button");
  reset_label.setText("Notes about reset button");
  reset_label.setTextBold();
  reset_label.setOpaque(true);
  reset_label.addEventHandler(this, "reset_label_click");
  reset_label_text = new GLabel(this, 0, 28, 154, 42);
  reset_label_text.setText("Reset button will return everything back to default settings");
  reset_label_text.setOpaque(true);
  reset_label.addControl(reset_label_text);
  manual_threshold_slider = new GCustomSlider(this, 474, 40, 168, 84, "grey_blue");
  manual_threshold_slider.setShowValue(true);
  manual_threshold_slider.setShowLimits(true);
  manual_threshold_slider.setTextOrientation(G4P.ORIENT_LEFT);
  manual_threshold_slider.setRotation(PI/2, GControlMode.CORNER);
  manual_threshold_slider.setLimits(1, 1000, 0);
  manual_threshold_slider.setNbrTicks(20);
  manual_threshold_slider.setEasing(5.0);
  manual_threshold_slider.setNumberFormat(G4P.INTEGER, 0);
  manual_threshold_slider.setLocalColorScheme(GCScheme.ORIENT_LEFT);
  manual_threshold_slider.setOpaque(false);
  manual_threshold_slider.addEventHandler(this, "manual_threshold_slider_mod");
  consoleoutput = new GTextArea(this, 8, 513, 361, 76, G4P.SCROLLBARS_BOTH | G4P.SCROLLBARS_AUTOHIDE);
  consoleoutput.setPromptText("Program Status");
  consoleoutput.setLocalColorScheme(GCScheme.RED_SCHEME);
  consoleoutput.setOpaque(true);
  consoleoutput.addEventHandler(this, "consoleoutput_mod");
  thresholdplot = new GButton(this, 500, 70, 92, 30);
  thresholdplot.setText("Plot Threshold Data");
  thresholdplot.setTextBold();
  thresholdplot.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  thresholdplot.addEventHandler(this, "thesholdplot_click");
  realtimeplot = new GButton(this, 500, 160, 93, 30);
  realtimeplot.setText("Show/Hide Realtime Plot");
  realtimeplot.setTextBold();
  realtimeplot.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  realtimeplot.addEventHandler(this, "realtimeplot_click");
  manualtthresholdenter = new GTextField(this, 370, 210, 120, 30, G4P.SCROLLBARS_NONE);
  manualtthresholdenter.setPromptText("Enter threshold value");
  manualtthresholdenter.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  manualtthresholdenter.setOpaque(true);
  manualtthresholdenter.addEventHandler(this, "manualthresholdenter_mod");
}

// Variable declarations 
// autogenerated do not edit
GButton start_button; 
GButton stop_button; 
GButton reset_button; 
GButton newset_button; 
GToggleGroup togGroup1; 
GOption calibration_option; 
GOption test_option; 
GTextField time_display; 
GTextField pI_conc_text; 
GTextField comment_box; 
GLabel pi_label; 
GLabel sb_label; 
GTextField sb_conc_text; 
GLabel pI_volume_label; 
GLabel sb_volume_label; 
GTextField pI_volume_text; 
GTextField sb_volume_text; 
GLabel sa_drops_label; 
GLabel starch_drops_label; 
GTextField sa_drops_text; 
GTextField starch_drop_text; 
GTextField current_set; 
GLabel set_number; 
GTextField trial_number; 
GLabel trial; 
GTextField threshold_value; 
GLabel threshold_label; 
GLabel elapsed_time_label; 
GLabel manual_threshold_label; 
GPanel reset_label; 
GLabel reset_label_text; 
GCustomSlider manual_threshold_slider; 
GTextArea consoleoutput; 
GButton thresholdplot; 
GButton realtimeplot; 
GTextField manualtthresholdenter; 