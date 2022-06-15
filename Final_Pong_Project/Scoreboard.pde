final private class Scoreboard extends Rectangle {

  Scoreboard(float x, float y, float xWidth, float yHeight, color C) {
    super(x, y, xWidth, yHeight, C);
  };

  final public void draw() {

    fill(C);
    rect(x, y, xWidth, Height);
    fill(0);
    textSize(33);
    textAlign(CENTER, CENTER);
    text(str(lScore), Shapes.get(0).x, Shapes.get(0).y, Shapes.get(0).w, Shapes.get(0).h);
    text(str(rScore), Shapes.get(1).x, Shapes.get(1).y, Shapes.get(1).w, Shapes.get(1).h);
  };
};
