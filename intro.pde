void intro() {
  background(forest);
  easyStrokeFill(5, 0, tan);
  easyText(CENTER, CENTER, 100, width/2, 300, "BREAKOUT");
  easyStrokeFill(5, 0, white);
  easyText(CENTER, CENTER, 25, width/2, 600, ">Click anywhere to play<");
}

void introClicks() {
  mode = GAME;
  dropBall = true;
  lives = 3;
  score = 0;
  ballX = width/2;
  ballY = height - 100;
  ballD = 25;
  tempX = 150;
  tempY = 100;
  int i = 0;
  while (i < n) {
    x[i] = tempX;
    y[i] = tempY;
    alive[i] = true;
    tempX = tempX + 60;
    if (tempX >= width - 150) {
      tempX = 150;
      tempY = tempY + 60;
    }
    i++;
  }
}
