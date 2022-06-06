final private class Ball extends Ellipse{
   float ballXSpeed,ballYSpeed;
   Ball(float x, float y, float diameter, float yDiameter, color Color, float xSpeed,float ySpeed){
   super(x,y,diameter,yDiameter,Color);
   this.ballXSpeed = xSpeed;
   this.ballYSpeed = ySpeed;
   };

 final public void draw(){
    noStroke();
    fill(c);
  ellipse(x,y,diameter,yDiameter);
  };
  
};
