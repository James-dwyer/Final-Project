void winScreen() {
  background(225);
  for (int i = 13; i < Shapes.size(); i++) {
    Shapes.get(i).draw();
  };
  if(lWin == true){
    fill(255);
  text("Left Player Wins!", Shapes.get(wIndex).x,Shapes.get(wIndex).y, width/3, height/10);
  };
  if(rWin == true){
    fill(255);
  text("Right Player Wins!", Shapes.get(wIndex).x,Shapes.get(wIndex).y, width/3, height/10);
  };
  fill(255);
  text("Restart",Shapes.get(resIndex).x,Shapes.get(resIndex).y,width/5, height/15);
  text("Exit",Shapes.get(qIndex).x,Shapes.get(qIndex).y,width/5, height/15);
  
  if(mouseX >= Shapes.get(qIndex).x && mouseX <= Shapes.get(qIndex).x + Shapes.get(qIndex).w && mouseY >= Shapes.get(qIndex).y && mouseY <= Shapes.get(qIndex).y+Shapes.get(qIndex).h)
  
  
  
};
