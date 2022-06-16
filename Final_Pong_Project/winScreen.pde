void winScreen() {
  background(225);
  for (int i = 13; i < Shapes.size()-9; i++) {
    Shapes.get(i).draw();
  };
  if (lWin == true) {
    fill(255);
    text("Left Player Wins!", Shapes.get(wIndex).x, Shapes.get(wIndex).y, Shapes.get(wIndex).w, Shapes.get(wIndex).h);
  };
  if (rWin == true) {
    fill(255);
    text("Right Player Wins!", Shapes.get(wIndex).x, Shapes.get(wIndex).y, Shapes.get(wIndex).w, Shapes.get(wIndex).h);
  };
  fill(255);
  text("Restart", Shapes.get(resIndex).x, Shapes.get(resIndex).y, width/5, height/15);
  text("Exit", Shapes.get(qIndex).x, Shapes.get(qIndex).y, Shapes.get(qIndex).w, Shapes.get(qIndex).h);

  if (mouseX >= Shapes.get(qIndex).x && mouseX <= Shapes.get(qIndex).x + Shapes.get(qIndex).w && mouseY >= Shapes.get(qIndex).y && mouseY <= Shapes.get(qIndex).y+Shapes.get(qIndex).h) {
    Rectangle quitHover = new Rectangle(width*3/4-width/5, height/2, width/5, height/15, 60);
    Shapes.set(qIndex, quitHover);
  } else {
    Rectangle quitHover = new Rectangle(width*3/4-width/5, height/2, width/5, height/15, 30);
    Shapes.set(qIndex, quitHover);
  };
  if (mouseX >= Shapes.get(resIndex).x && mouseX <= Shapes.get(resIndex).x + Shapes.get(resIndex).w && mouseY >= Shapes.get(resIndex).y && mouseY <= Shapes.get(resIndex).y+Shapes.get(resIndex).h) {
    Rectangle resHover = new Rectangle(width/4, height/2, width/5, height/15, 60);
    Shapes.set(resIndex, resHover);
  } else {
    Rectangle resHover = new Rectangle(width/4, height/2, width/5, height/15, 30);
    Shapes.set(resIndex, resHover);
  };
};
