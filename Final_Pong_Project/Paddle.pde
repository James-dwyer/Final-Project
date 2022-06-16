final private class Paddle extends Rectangle {
  float pSpeed;
  float Height;
  Paddle(float x, float y, float xWidth, float yHeight, color C, float paddleSpeed) {
    super(x, y, xWidth, yHeight, C);
    this.pSpeed = paddleSpeed;
    this.Height = yHeight;
  };


  final public void draw() {
    fill(C);
    rect(x, y, xWidth, Height);

    move();
    sBScore();
  };

  private void move() {
    y += pSpeed;
    if (y <= height*0) {
      y = height*0;
    };
    if (y+Height >= height ) {
      y = height - Height;
    };
  };
   private void sBScore() {
    if (lScore == 0) {
      Shapes.get(lIndex).h = height/5;
    };
    if (lScore == 1) {
      Shapes.get(lIndex).h = height/8;
    };
    if (lScore == 2) {
      Shapes.get(lIndex).h = height/10;
    };
    if (rScore == 0) {
      Shapes.get(rIndex).h = height/5;
    };
    if (rScore == 1) {
      Shapes.get(rIndex).h = height/8;
    };
    if (rScore == 2) {
      Shapes.get(rIndex).h = height/10;
    };
  };
};
