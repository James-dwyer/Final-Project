void starSetup() {

  while (redo == false) {
    for (int i = 0; i < Star.length; i++) {

      float diameter = random(width/70, width/15);
      float randX = random((width/50)+diameter/2,(width - (width/50))-diameter/2);
      float randY = random(0+diameter/2, height-diameter/2);
      Star[i] = new Ball(randX, randY, diameter/2, diameter/2, 210);
      int j = i;
      while (j >= i) {
        if (randX+diameter/2 <= Star[i].x+Star[i].x && randX-diameter/2 > Star[i].x) {
          randX = random(0+diameter/2, width-diameter/2);
          if (Star[i].x <= randX+diameter/2 && Star[i].x <= randX-diameter/2) {
            randX = random(0+diameter/2, height-diameter/2);
          };
        };
        j--;
      };

      Star[i] = new Ball(randX, randY, diameter/2, diameter/2, 210);
      while (j >= i) {
        if (randY+diameter/2 <= Star[i].y && randY-diameter/2 >= Star[i].y) {
          randY = random(0+diameter/2, height-diameter/2);
          if (Star[i].y <= randY+diameter/2 && Star[i].y<= randY-diameter/2) {
            randY = random(0+diameter/2, height-diameter/2);
          };
        }
        ;
        j--;
      };
      Star[i] = new Ball(randX, randY, diameter/2, diameter/2, 210);
    };
    redo = true;
  };
  for (int i=0; i<Star.length; i++) {
    for (int X = Star.length-1; X > i; X--) {
      if (Star[i].x < Star[X].x && Star[i].x > Star[X].x)redo = false;
      if (Star[i].y > Star[X].y && Star[i].y < Star[X].y)redo = false;
    };
  };
};
