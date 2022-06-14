public void pause(){
  Rectangle pRect = new Rectangle(width/2, height/4, width/2-(width*2/5)/2,height/3,255);
  Shapes.set(pIndex,pRect);
  
  resume.x = width/3;
  resume.y = height/3+(height/3)/3;
  
  
  Shapes.get(pIndex).draw();
};
