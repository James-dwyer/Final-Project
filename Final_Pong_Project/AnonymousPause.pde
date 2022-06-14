Shape pause = new Shape(width/2 - (width/4)/2, height/4) {
  void starDraw() {
  };


  String resString = "Resume", resetString = "Reset", exitString = "Exit";



  void draw() {
    fill(res);
    resume.draw();
    fill(reset);
    restart.draw();
    fill(ex);
    exit.draw();
    fill(pColor);
    rect(x, y, width*2/5, height/3);

    fill(0);
    textSize(25);
    text(resString, resume.x, resume.y, width/12, height/9);
    text(resetString, restart.x, restart.y, width/12, height/9);
    text(exitString, exit.x, exit.y, width/12, height/9);
    textSize(50);
    fill(255);
    text("Pause", resume.x - width/12, resume.y-height/9, resume.x+width/12*2, height/9);
  };
};
