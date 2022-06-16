ArrayList<Shape> Shapes = new ArrayList<Shape>();
float ballXSpeed = 0, ballYSpeed = 0;

//add start screen, 

float paddleSpeedL, paddleSpeedR;
int lScore = 0, rScore = 0;
color res = 210, ex = 210, reset = 210;
color pColor = color(225, 225, 225, 80);
color bColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));
int bIndex = 5, lIndex = 6, rIndex = 7, wIndex = 13, qIndex = 14, resIndex = 15, pIndex = 27;
boolean rules = true, lRules = false, rRules = false;
boolean lWin = false, rWin = false, redo = false, instructions = false, rBool = false;
Rectangle resume = new Rectangle(width/2, height/3, width/9, height/6, res);
Rectangle restart = new Rectangle(width/2, height/3, width/9, height/6, reset);
Rectangle exit = new Rectangle(width/2, height/3, width/9, height/6, ex);
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
  Rectangle win = new Rectangle(width/2-((width/2)/3), height/4, width/3, height/10, 30);
  Rectangle quit = new Rectangle(width*3/4-width/5, height/2, width/5, height/15, 30);
  Rectangle pAgain = new Rectangle(width/4, height/2, width/5, height/15, 30);
  Rectangle  lRule = new Rectangle(width/10, height*3/10, width/4, width/20, #FF00FF);
  Rectangle lRule1 = new Rectangle(width/10, height*4/10, width/4, width/20, #0000FF);
  Rectangle lRule2 = new Rectangle(width/10, height*5/10, width/4, width/20, #FF7000);
  Rectangle lRule3 = new Rectangle(width/10, height*6/10, width/4, width/20, #FF0000);
  
  
  Rectangle rRule1 = new Rectangle(width - lRule.x-lRule.w, height*4/10, width/4, width/20, #0000FF);
  Rectangle rRule2 = new Rectangle(width - lRule.x-lRule.w,height*5/10, width/4, width/20, #FF7000);
  Rectangle rRule3 = new Rectangle(width - lRule.x-lRule.w, height*6/10, width/4, width/20, #FF0000);
  
  Rectangle sSaver = new Rectangle(width-(width/6), height-(height/20), width/6, height/20, #FF00FF);
  Rectangle rRule = new Rectangle(width-lRule.x-lRule.w, height*3/10, width/4, width/20, #FF00FF);
  Rectangle start = new Rectangle(width*3/10, height*5/7, width*2/5, height/8, #FF00FF);

  Rectangle rules  = new Rectangle(width/5, height/15, width*3/5, height*2/15, #FF00FF);
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

  for ( int i = 0; i < Star.length; i++) {
    Shapes.add(Star[i]);
  };

  Shapes.add(win);
  Shapes.add(quit);
  Shapes.add(pAgain);

  Shapes.add(lRule);
  Shapes.add(rRule);
  Shapes.add(lRule1);
  Shapes.add(lRule2);
  Shapes.add(lRule3);
  Shapes.add(rRule1);
  Shapes.add(rRule2);
  Shapes.add(rRule3);
 
  Shapes.add(rules);
  Shapes.add(start);
  Shapes.add(sSaver);

  Shapes.add(pause);
};


void draw() {
   if (width > height) {
     
  if(rules == false && lRules == true && rRules == true){
  if (lWin == false && rWin == false) {

    gameStart();
  } else if (lWin == true || rWin == true) {
    winScreen();
  };
  } else if (rules == true && lRules == false && rRules == false){
  ruleScreen();
  };
}else {
    noLoop();
    println("ERROR: HEIGHT IS GREATER THAN WIDTH");
  };
}


void keyPressed() {
  if (

    key == 'i' || key == 'I') {
    if (instructions == false) { 
      instructions = true;
    } else if (instructions == true) {
      instructions = false;
    };
  };
  if (key == 'w' || key == 'W') {
    paddleSpeedL = -5;
    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, Shapes.get(lIndex).w, Shapes.get(lIndex).h, #FF0000, paddleSpeedL);

    Shapes.set(lIndex, leftPaddle);
  }
  if (key == 's' || key == 'S') {
    paddleSpeedL = 5;

    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, Shapes.get(lIndex).w, Shapes.get(lIndex).h, #FF0000, paddleSpeedL);

    Shapes.set(lIndex, leftPaddle);
  }
  if (key == CODED) {
    if (keyCode == UP) {
      paddleSpeedR = -5;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, Shapes.get(rIndex).w, Shapes.get(rIndex).h, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
    if (keyCode == DOWN) {
      paddleSpeedR = 5;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, Shapes.get(rIndex).w, Shapes.get(rIndex).h, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
  };
};

void keyReleased() {
  if (key == 'w' || key == 'W') {
    paddleSpeedL = 0;
    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, Shapes.get(lIndex).w, Shapes.get(lIndex).h, #FF0000, paddleSpeedL);

    Shapes.set(lIndex, leftPaddle);

    Shapes.set(lIndex, leftPaddle);
  };

  if (key == 's' || key == 'S') {
    paddleSpeedL = 0;

    Paddle leftPaddle = new Paddle(Shapes.get(lIndex).x, Shapes.get(lIndex).y, Shapes.get(lIndex).w, Shapes.get(lIndex).h, #FF0000, paddleSpeedL);

    Shapes.set(lIndex, leftPaddle);
  }

  if (key == CODED) {
    if (keyCode == UP) {
      paddleSpeedR = 0;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, Shapes.get(rIndex).w, Shapes.get(rIndex).h, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
    if (keyCode == DOWN) {
      paddleSpeedR = 0;
      Paddle rightPaddle = new Paddle(Shapes.get(rIndex).x, Shapes.get(rIndex).y, Shapes.get(rIndex).w, Shapes.get(rIndex).h, #0000FF, paddleSpeedR);
      Shapes.set(rIndex, rightPaddle);
    };
  };
};

void mousePressed() {
  if (instructions == true) {
    if (mouseX >= resume.x && mouseX <= resume.x + resume.w && mouseY >= resume.y && mouseY <= resume.y+resume.h) {
      instructions = false;
    };
    if (mouseX >= restart.x && mouseX <= restart.x+restart.w && mouseY >= restart.y && mouseY <= restart.y+restart.h) {
      rBool = true;
      reset();
      instructions = false;
    };
    if (mouseX >= exit.x && mouseX <= exit.x+exit.w && mouseY >= exit.y && mouseY <= exit.y+exit.h) {
      exit();
    };
  }else if(lWin == false && rWin == false){
  Shapes.remove(bIndex);

    Ball ball = new Ball(width/2, height/2, width/75, width/75, bColor, ballXSpeed, ballYSpeed);
    Shapes.add(bIndex, ball);
  };
  if (lWin == true || rWin == true) {
    if (mouseX >= Shapes.get(qIndex).x && mouseX <= Shapes.get(qIndex).x + width/5 && mouseY >= Shapes.get(qIndex).y && mouseY <= Shapes.get(qIndex).y+height/15) {
      exit();
    };
    if (mouseX >= Shapes.get(resIndex).x && mouseX <= Shapes.get(resIndex).x + width/5 && mouseY >= Shapes.get(resIndex).y && mouseY <= Shapes.get(resIndex).y+height/15) {
      lScore = 0;
      rScore = 0;
      lWin = false;
      rWin = false;
      Shapes.get(bIndex).y = height/2;
    };
  };
  if(rules == true){
  if (mouseX >= Shapes.get(18).x && mouseX <= Shapes.get(18).x + Shapes.get(18).w && mouseY >= Shapes.get(18).y && mouseY <= Shapes.get(18).y+Shapes.get(18).h){
  paddleSpeedL = -3;
  lRules = true;
  };
   if (mouseX >= Shapes.get(19).x && mouseX <= Shapes.get(19).x + Shapes.get(19).w && mouseY >= Shapes.get(19).y && mouseY <= Shapes.get(19).y+Shapes.get(19).h){
  paddleSpeedL = -5;
  lRules = true;
  };
   if (mouseX >= Shapes.get(20).x && mouseX <= Shapes.get(20).x + Shapes.get(20).w && mouseY >= Shapes.get(20).y && mouseY <= Shapes.get(20).y+Shapes.get(20).h){
  paddleSpeedL = -7;
  lRules = true;
  };
   if (mouseX >= Shapes.get(21).x && mouseX <= Shapes.get(21).x + Shapes.get(21).w && mouseY >= Shapes.get(21).y && mouseY <= Shapes.get(21).y+Shapes.get(21).h){
  paddleSpeedR = -3;
  rRules = true;
  };
   if (mouseX >= Shapes.get(22).x && mouseX <= Shapes.get(22).x + Shapes.get(22).w && mouseY >= Shapes.get(22).y && mouseY <= Shapes.get(22).y+Shapes.get(22).h){
  paddleSpeedR = -5;
  rRules = true;
  };
   if (mouseX >= Shapes.get(23).x && mouseX <= Shapes.get(23).x + Shapes.get(23).w && mouseY >= Shapes.get(23).y && mouseY <= Shapes.get(23).y+Shapes.get(23).h){
  paddleSpeedR = -7;
  rRules = true;
  };
  if(lRules == true && rRules == true){
    if(mouseX >= Shapes.get(25).x && mouseX <= Shapes.get(25).x + Shapes.get(25).w && mouseY >= Shapes.get(25).y && mouseY <= Shapes.get(25).y+Shapes.get(25).h){
      rules = false;
    };
  };
  };

};
