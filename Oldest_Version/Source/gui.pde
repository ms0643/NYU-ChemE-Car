public class Base
{
  int x, y;
  
  
  Base(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
  
  void draw()
  {

    
  }
  
  void update()
  {
    
  }
  
  
}

public class Indicator extends Base
{
  String label;
  String value = "";
  
  Indicator(String label, int x, int y)
  {
   super(x, y);
   this.label = label;
   
  }
  
  void draw()
  {
   super.draw();
   fill(255);
   text(label, x, y);
   text(value, x+100, y);
   
  }
  
  void update()
  {
   super.update(); 
  }
}

public class Button extends Base
{
  String label;
  float labelWidth, labelHeight;
  boolean clicked = false;
  boolean mouseOver;
  
  
  Button(String label, int x, int y)
  {
   super(x, y);
   this.label = label;
   
   this.labelHeight = 20;
  }
  
  void draw()
  {
   super.draw();
   this.labelWidth = textWidth(label);
   textSize(labelHeight);
   if (this.clicked)
   {
      
     fill(150);
     rect(x, y, labelWidth+5, labelHeight+5);
     fill(0);
     text(label, x+2.5, y+labelHeight);

   }
   else
   {
   
   fill(255);
   rect(x, y, labelWidth+5, labelHeight+5);
   fill(0);
   text(label, x+2.5, y+labelHeight);
   }
   
  }
  
  void update()
  {
   super.update(); 

  }
  
  //boolean isMousePressed()
  //{
  //  if (mousePressed && mouseX >= x && mouseY >= y && mouseX <=(x+labelWidth+5) && mouseY <=(y+labelHeight+5))
  //  {
      
  //    return true;
      
  //  } 
  //  else
  //  {
  //    return false;
  //  }
    
  //}
  
  boolean isMouseClicked()
  {
    if(mouseClicked)
        
    {
      
      if (mouseX >= x && mouseY >= y && mouseX <=(x+labelWidth+5) && mouseY <=(y+labelHeight+5))
      {
        mouseClicked = false;
        this.clicked =true;
        return true;
      }
      else
      {
        return false;
      }
    }
    else
    {
      return false;
    }
    
  }
}
