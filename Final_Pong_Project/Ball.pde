final private class Ball extends Ellipse {
  float ballXSpeed, ballYSpeed;
  Ball(float x, float y, float diameter, float yDiameter, color Color, float xSpeed, float ySpeed) {
    super(x, y, diameter, yDiameter, Color);
    this.ballXSpeed = xSpeed;
    this.ballYSpeed = ySpeed;

    while ( ballXSpeed == 0) ballXSpeed = int(random(-5, 5));
    while ( ballYSpeed == 0) ballYSpeed = int(random(-5, 5));
  };

  final public void draw() {
    noStroke();
    fill(c);
    ellipse(x, y, diameter, yDiameter);

    move();
    bounce();
    score();
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

    if (x+diameter >= Shapes.get(rIndex).x && y-diameter >= Shapes.get(rIndex).y && y+diameter <= Shapes.get(rIndex).y + height/5) {
      ballXSpeed *= -1;
    }    
    if (x-diameter <= Shapes.get(lIndex).x && y-diameter >= Shapes.get(lIndex).y && y+diameter <= Shapes.get(lIndex).y + height/5) {
      ballXSpeed *= -1;
    }
  };
  void score() {
    if (x-diameter/2 < Shapes.get(2).x) {


      Shapes.get(lIndex).y = height/2-height/5/2;
      Shapes.get(rIndex).y = height/2-height/5/2;

      x = width/2;
      y = width/2;

      ballYSpeed = int(random(-5, 5));
      ballXSpeed = int(random(-5, 5));
      while (ballYSpeed == 0)ballYSpeed = int(random(-5, 5));
      while (ballXSpeed == 0)ballXSpeed = int(random(-5, 5));
      rScore+= 1;
    };
    if (x+diameter/2 > Shapes.get(4).x) {

      Shapes.get(lIndex).y = height/2-height/5/2;
      Shapes.get(rIndex).y = height/2-height/5/2;
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
