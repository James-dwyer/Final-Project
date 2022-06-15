final private class Ball extends Ellipse {
  float ballXSpeed, ballYSpeed;
  Ball(float x, float y, float diameter, float yDiameter, color Color, float xSpeed, float ySpeed) {
    super(x, y, diameter, yDiameter, Color);
    this.ballXSpeed = xSpeed;
    this.ballYSpeed = ySpeed;

    while ( ballXSpeed == 0) ballXSpeed = int(random(-5, 5));
    while ( ballYSpeed == 0) ballYSpeed = int(random(-5, 5));
  };

  Ball(float X, float Y, float diameter, float yDiameter, color Color) {
    super(X, Y, diameter, yDiameter, Color);
  };

  final public void draw() {
    noStroke();
    fill(c);
    ellipse(x, y, diameter, yDiameter);


    move();
    bounce();
    score();
    sBounce();
  };

  public void starDraw() {
    fill(90);
    ellipse(X, Y, diameter, yDiameter);
  };
  private void move() {
    x += ballXSpeed;
    y += ballYSpeed;
  };
  private void bounce() {
    if (y-yDiameter/2 <= height*0 || y+yDiameter/2 >= height) {
      ballYSpeed = ballYSpeed*=-1;
    }
    if (x+diameter/2 >= width || x-diameter/2  <= width*0) ballXSpeed *= -1;

    if (x+diameter/2 >= Shapes.get(rIndex).x + Shapes.get(rIndex).w && y-diameter/2 >= Shapes.get(rIndex).y && y+yDiameter/2 <= Shapes.get(rIndex).y + Shapes.get(rIndex).h) {
      ballXSpeed *= -1;
    }    
    if (x-diameter/2 <= Shapes.get(lIndex).x + Shapes.get(lIndex).w && y-diameter/2 >= Shapes.get(lIndex).y && y+diameter/2 <= Shapes.get(lIndex).y +Shapes.get(lIndex).h) {
      ballXSpeed *= -1;
    }
  };
   void sBounce() {
    for (int i = 8; i < Shapes.size() - 4; i++) {
      if (dist(Shapes.get(bIndex).x, (Shapes.get(bIndex).y), Shapes.get(i).x, Shapes.get(i).y) <= Shapes.get(i).w/2 + Shapes.get(i).h/2) {
        ballXSpeed *= -1;
      };
    };
  };
  private void score() {
    if (x-diameter/2 < Shapes.get(2).x) {


      Shapes.get(lIndex).y = height/2-Shapes.get(lIndex).h/2;
      Shapes.get(rIndex).y = height/2-Shapes.get(rIndex).h/2;

      x = width/2;
      y = width/2;

      ballYSpeed = int(random(-5, 5));
      ballXSpeed = int(random(-5, 5));
      while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
      while (ballXSpeed == 0)ballXSpeed = int(random(-5, 5));
      rScore+= 1;
    };
    if (x+diameter/2 > Shapes.get(4).x) {

      Shapes.get(lIndex).y = height/2-Shapes.get(lIndex).h/2;
      Shapes.get(rIndex).y = height/2-Shapes.get(rIndex).h/2;
      Shapes.get(bIndex).x = width/2;
      ballYSpeed = int(random(-5, 5));
      ballXSpeed = int(random(-5, 5));
      while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
      while (ballXSpeed == 0)ballXSpeed = int(random(-5, 5));
      lScore+= 1;
    };

    if (rScore == 3) {
      rWin = true;
    };
    if (lScore == 3) {
      lWin = true;
    };
  };
};
