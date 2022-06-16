private class Rectangle extends Square {
  float Height;
  color C;
  Rectangle(float x, float y, float xWidth, float h, color C) {
    super(x, y, xWidth,h, C);
    this.Height = h;
    this.C = C;
  };


  public void draw() {
    noStroke();
    fill(C);
    rect(x, y, xWidth, Height);
  if(rules == true){
    fill(0);
    textAlign(CENTER,CENTER);
    smooth();
    textSize(23);
    text("Left: W and S",Shapes.get(16).x,Shapes.get(16).y,Shapes.get(16).w,Shapes.get(16).h);
    
    text("Right: UP and Down",Shapes.get(17).x,Shapes.get(17).y,Shapes.get(17).w,Shapes.get(17).h);
    text("Slow",Shapes.get(18).x,Shapes.get(18).y,Shapes.get(18).w,Shapes.get(18).h);
     text("Regular",Shapes.get(19).x,Shapes.get(19).y,Shapes.get(19).w,Shapes.get(19).h);
      text("Fast",Shapes.get(20).x,Shapes.get(20).y,Shapes.get(20).w,Shapes.get(20).h);
      text("Slow",Shapes.get(21).x,Shapes.get(21).y,Shapes.get(21).w,Shapes.get(21).h);
     text("Regular",Shapes.get(22).x,Shapes.get(22).y,Shapes.get(22).w,Shapes.get(22).h);
      text("Fast",Shapes.get(23).x,Shapes.get(23).y,Shapes.get(23).w,Shapes.get(23).h);
      
    text("Score 3 Goals To Win The Game!",Shapes.get(24).x,Shapes.get(24).y,Shapes.get(24).w,Shapes.get(24).h);
    text("Click Here to Play! Press i at Anytime to Pause!",Shapes.get(25).x,Shapes.get(25).y,Shapes.get(25).w,Shapes.get(25).h);
    text("ScreenSaver",Shapes.get(26).x,Shapes.get(26).y,Shapes.get(26).w,Shapes.get(26).h);
    };
    hover();
    //move();
  };
  void hover(){
    if (mouseX >= Shapes.get(18).x && mouseX <= Shapes.get(18).x + Shapes.get(18).w && mouseY >= Shapes.get(18).y && mouseY <= Shapes.get(18).y+Shapes.get(18).h){
 Rectangle lRule1 = new Rectangle(width/10, height*4/10, width/4, width/20, #0020FF);
  Shapes.set(18,lRule1);
}else   {Rectangle lRule1 = new Rectangle(width/10, height*4/10, width/4, width/20, #0000FF);
  Shapes.set(18,lRule1);};
if (mouseX >= Shapes.get(19).x && mouseX <= Shapes.get(19).x + Shapes.get(19).w && mouseY >= Shapes.get(19).y && mouseY <= Shapes.get(19).y+Shapes.get(19).h){
 Rectangle lRule2 = new Rectangle(width/10, height*5/10, width/4, width/20, #FF7030);
  Shapes.set(19,lRule2);
}else   {Rectangle lRule2 = new Rectangle(width/10, height*5/10, width/4, width/20, #FF7000);
  Shapes.set(19,lRule2);};
     if (mouseX >= Shapes.get(20).x && mouseX <= Shapes.get(20).x + Shapes.get(20).w && mouseY >= Shapes.get(20).y && mouseY <= Shapes.get(20).y+Shapes.get(20).h){
Rectangle lRule3 = new Rectangle(width/10, height*6/10, width/4, width/20, #FF0030);
  Shapes.set(20,lRule3);
}else   {Rectangle lRule3 = new Rectangle(width/10, height*6/10, width/4, width/20, #FF0000);
  Shapes.set(20,lRule3);};
  
  if (mouseX >= Shapes.get(21).x && mouseX <= Shapes.get(21).x + Shapes.get(21).w && mouseY >= Shapes.get(21).y && mouseY <= Shapes.get(21).y+Shapes.get(21).h){
 Rectangle rRule1 = new Rectangle(Shapes.get(21).x, height*4/10, width/4, width/20, #0020FF);
  Shapes.set(21,rRule1);
}else   {Rectangle rRule1 = new Rectangle(Shapes.get(21).x, height*4/10, width/4, width/20, #0000FF);
  Shapes.set(21,rRule1);};
  
  if (mouseX >= Shapes.get(22).x && mouseX <= Shapes.get(22).x + Shapes.get(22).w && mouseY >= Shapes.get(22).y && mouseY <= Shapes.get(22).y+Shapes.get(22).h){
 Rectangle rRule2 = new Rectangle(Shapes.get(22).x,height*5/10, width/4, width/20, #FF7030);
  Shapes.set(22,rRule2);
}else   { Rectangle rRule2 = new Rectangle(Shapes.get(22).x,height*5/10, width/4, width/20, #FF7000);
  Shapes.set(22,rRule2);};
  
  if (mouseX >= Shapes.get(23).x && mouseX <= Shapes.get(23).x + Shapes.get(23).w && mouseY >= Shapes.get(23).y && mouseY <= Shapes.get(23).y+Shapes.get(23).h){
Rectangle rRule3 = new Rectangle(Shapes.get(23).x, height*6/10, width/4, width/20, #FF0030);
  Shapes.set(23,rRule3);
}else   {Rectangle rRule3 = new Rectangle(Shapes.get(23).x, height*6/10, width/4, width/20, #FF0000);
  Shapes.set(23,rRule3);};
  
if (mouseX >= Shapes.get(25).x && mouseX <= Shapes.get(25).x + Shapes.get(25).w && mouseY >= Shapes.get(25).y && mouseY <= Shapes.get(25).y+Shapes.get(25).h){
Rectangle start = new Rectangle(width*3/10, height*5/7, width*2/5, height/8, #FF30FF);
  Shapes.set(25,start);
}else   {Rectangle start = new Rectangle(width*3/10, height*5/7, width*2/5, height/8, #FF00FF);;
  Shapes.set(25,start);};
  if (mouseX >= Shapes.get(26).x && mouseX <= Shapes.get(26).x + Shapes.get(26).w && mouseY >= Shapes.get(26).y && mouseY <= Shapes.get(26).y+Shapes.get(26).h){
Rectangle sSaver = new Rectangle(width-(width/6), height-(height/20), width/6, height/20, #FF30FF);
  Shapes.set(26,sSaver);
}else   {Rectangle sSaver = new Rectangle(width-(width/6), height-(height/20), width/6, height/20, #FF00FF);
  Shapes.set(26,sSaver);};
  
  
  
  
  
  
  
  
  };
};
