ArrayList<Shape> Shapes = new ArrayList<Shape>();
float ballXSpeed,ballYSpeed;
float paddleSpeedL, paddleSpeedR;
color bColor = color((int(random(0, 255))), int(random(0, 255)), int(random(0, 255)));



void setup(){
  fullScreen();
  
  smooth();

  Ball ball = new Ball(width/2, height/2, width/75, width/75, bColor,ballXSpeed,ballYSpeed);
  Rectangle lPaddle = new Rectangle(width/50, height/2-(height/5)/2, width/85, height/5, #FF0000);
  Rectangle rPaddle = new Rectangle(width - (width/50), height/2-(height/5)/2, width/-85, height/5, #0000FF);
  Shapes.add(ball);
  Shapes.add(lPaddle);
  Shapes.add(rPaddle);

};


void draw(){
  background(0);
  
  for(int i = 0; i < Shapes.size();i++){
  Shapes.get(i).draw();
  
  };
  
};
