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
      
    text("Score 3 Goals To Win The Game!",Shapes.get(24).x,Shapes.get(24).y,Shapes.get(24).w,Shapes.get(24).h);
    text("Click Here to Play! Press i at Anytime to Pause!",Shapes.get(25).x,Shapes.get(25).y,Shapes.get(25).w,Shapes.get(25).h);
    text("ScreenSaver",Shapes.get(26).x,Shapes.get(26).y,Shapes.get(26).w,Shapes.get(26).h);
    };
    hover();
    //move();
  };
  void hover(){
//if (mouseX >= Shapes.get(19).x && mouseX <= Shapes.get(19).x + Shapes.get(19).w && mouseY >= Shapes.get(19).y && mouseY <= Shapes.get(19).y+Shapes.get(19).h){
//  Shapes.get(19).C = #FF30FF;
//}else Shapes.get(19).C = #FF00FF;
//  if (mouseX >= Shapes.get(16).x && mouseX <= Shapes.get(16).x + Shapes.get(16).w && mouseY >= Shapes.get(16).y && mouseY <= Shapes.get(16).y+Shapes.get(16).h){
//  Shapes.get(16).C = #FF7030;
//}else Shapes.get(16).C = #FF7000;
//if (mouseX >= Shapes.get(15).x && mouseX <= Shapes.get(15).x + Shapes.get(15).w && mouseY >= Shapes.get(15).y && mouseY <= Shapes.get(15).y+Shapes.get(15).h){
//  Shapes.get(15).C = #0030FF;
//}else Shapes.get(15).C = #0000FF;
//if (mouseX >= Shapes.get(17).x && mouseX <= Shapes.get(17).x + Shapes.get(17).w && mouseY >= Shapes.get(17).y && mouseY <= Shapes.get(17).y+Shapes.get(17).h){
//  Shapes.get(17).C = #FF0030;
//}else Shapes.get(17).C = #FF0000;

//if (mouseX >= Shapes.get(20).x && mouseX <= Shapes.get(20).x + Shapes.get(20).w && mouseY >= Shapes.get(20).y && mouseY <= Shapes.get(20).y+Shapes.get(20).h){
//  Shapes.get(20).C = #FF30FF;;
//}else Shapes.get(20).C = #FF00FF;
  };
};
