ArrayList<Shape> Shapes = new ArrayList<Shape>();
float ballXSpeed = 0, ballYSpeed = 0;
float paddleSpeedL, paddleSpeedR;
int lScore = 0, rScore = 0;
color bColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
int bIndex = 5, lIndex = 6, rIndex = 7;
boolean lWin = false, rWin = false,redo = false;
Ball[] Star = new Ball[5];


void setup() {
  fullScreen();
  frameRate(100);
  smooth();
 Scoreboard lScoreboard = new Scoreboard(width*1/4-(width/10)/2, height*0, width/10, height/8, 200);
  Scoreboard rScoreboard = new Scoreboard(width*3/4-(width/10)/2, height*0, width/10, height/8, 200);
  Ball ball = new Ball(width/2, height/2, width/75, width/75, bColor, ballXSpeed, ballYSpeed);
  Paddle lPaddle = new Paddle(width/50, height/2-(height/5)/2, width/85, height/5, #FF0000, paddleSpeedL);
  Paddle rPaddle = new Paddle(width - (width/50), height/2-(height/5)/2, width/-85, height/5, #0000FF, paddleSpeedR);
 
  Line lLine = new Line(width/50, height*0, width/50, height);
  Line mLine = new Line(width/2, height*0, width/2, height);
  Line rLine = new Line(width- (width/50), height*0, width - (width/50), height);
  starSetup();
    Shapes.add(lScoreboard);
  Shapes.add(rScoreboard);
  Shapes.add(lLine);
  Shapes.add(mLine);
  Shapes.add(rLine);
  Shapes.add(ball);
  Shapes.add(lPaddle);
  Shapes.add(rPaddle);
  
  for( int i = 0; i < Star.length; i++){
    Shapes.add(Star[i]);
  };

};


void draw() {
 if(lWin == false && rWin == false){
   gameStart();
   };

  
};


void keyPressed() {

  if (key == 'w' || key == 'W') {
    paddleSpeedL = -5;
    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, width/85, height/5, #FF0000, paddleSpeedL);
    Shapes.set(lIndex, leftPaddle);
  }
  if (key == 's' || key == 'S') {
    paddleSpeedL = 5;
    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, width/85, height/5, #FF0000, paddleSpeedL);
    Shapes.set(lIndex, leftPaddle);
  }
  if (key == CODED) {
    if (keyCode == UP) {
      paddleSpeedR = -5;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, width/-85, height/5, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
    if (keyCode == DOWN) {
      paddleSpeedR = 5;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, width/-85, height/5, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
  };
};

void keyReleased() {
  if (key == 'w' || key == 'W') {
    paddleSpeedL = 0;
    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, width/85, height/5, #FF0000, paddleSpeedL);
    Shapes.set(lIndex, leftPaddle);
  };
  if (key == 's' || key == 'S') {
    paddleSpeedL = 0;
    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, width/85, height/5, #FF0000, paddleSpeedL);
    Shapes.set(lIndex, leftPaddle);
  }

  if (key == CODED) {
    if (keyCode == UP) {
      paddleSpeedR = 0;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, width/-85, height/5, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
    if (keyCode == DOWN) {
      paddleSpeedR = 0;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, width/-85, height/5, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
  };
};

void mousePressed() {
};
