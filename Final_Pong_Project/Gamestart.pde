void gameStart() {
  background(0);
  if(instructions == true){ pause(); }
  else if(instructions == false){
  for (int i = 0; i < Shapes.size()-12; i++) {
    Shapes.get(i).draw();
    
  };
  };
};
