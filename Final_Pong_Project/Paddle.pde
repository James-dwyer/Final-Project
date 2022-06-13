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

  };

  void move() {
    y += pSpeed;
    if (y <= height*0) {
      y = height*0;
    };
    if (y+Height >= height ) {
      y = height - Height;
    };

  };
    
};
