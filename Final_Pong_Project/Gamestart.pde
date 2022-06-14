void gameStart() {
  background(0);

  for (int i = 0; i < Shapes.size()-4; i++) {
    Shapes.get(i).draw();
  };
};
