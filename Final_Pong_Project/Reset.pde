void reset() {

  lScore = 0;
  rScore = 0;
  Shapes.get(bIndex).x = width/2;
  Shapes.get(bIndex).y = height/2;
  lWin = false;
  rWin = false;
  instructions = false;
};
