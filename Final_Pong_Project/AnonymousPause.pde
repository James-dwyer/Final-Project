Rectangle pause = new Rectangle(width*0, height*0, width, height, pColor) {

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
    fill(C);
    rect(x, y, w, h);

    fill(0);
    textSize(25);
    text(resString, resume.x, resume.y, resume.w, resume.h);
    text(resetString, restart.x, restart.y, restart.w, restart.h);
    text(exitString, exit.x, exit.y, exit.w, exit.h);
    textSize(50);
    fill(255);
    text("Pause", resume.x - resume.w, resume.y-resume.h, resume.x+resume.w*2, resume.h);
  };
};
