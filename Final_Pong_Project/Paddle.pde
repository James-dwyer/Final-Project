 final private class Paddle extends Rectangle{
   float pSpeed;
   Paddle(float x, float y, float xWidth, float yHeight, color C,float paddleSpeed){
   super(x,y,xWidth,yHeight,C);
   this.pSpeed = paddleSpeed;
   };
 
 
   final public void draw(){
    fill(C);
   rect(x,y,xWidth,Height);
   
   move();
   };
   
   void move(){
   y += pSpeed;
   
   };
 };
