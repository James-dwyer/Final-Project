ArrayList<Shape> Shapes = new ArrayList<Shape>();
float ballXSpeed, ballYSpeed;
float paddleSpeedL, paddleSpeedR;
color bColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
int bIndex = 3, lIndex = 4, rIndex = 5;


void setup() {
  fullScreen();

  smooth();

  Ball ball = new Ball(width/2, height/2, width/75, width/75, bColor, ballXSpeed, ballYSpeed);
  Paddle lPaddle = new Paddle(width/50, height/2-(height/5)/2, width/85, height/5, #FF0000,paddleSpeedL);
  Paddle rPaddle = new Paddle(width - (width/50), height/2-(height/5)/2, width/-85, height/5, #0000FF,paddleSpeedR);
  Line lLine = new Line(width/50, height*0, width/50, height);
  Line mLine = new Line(width/2, height*0, width/2, height);
  Line rLine = new Line(width- (width/50), height*0, width - (width/50), height);
  Shapes.add(lLine);
  Shapes.add(mLine);
  Shapes.add(rLine);
  Shapes.add(ball);
  Shapes.add(lPaddle);
  Shapes.add(rPaddle);
};


void draw() {
  background(0);

  for (int i = 0; i < Shapes.size(); i++) {
    Shapes.get(i).draw();
  };
};


void keyPressed() {
  
  if(key == 'w' || key == 'W'){
    paddleSpeedL = -5;
  };
  
};

void keyReleased() {
};

void mousePressed() {
};
