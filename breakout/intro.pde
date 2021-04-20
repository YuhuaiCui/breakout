void intro() {
  background(255);
}

void introClicks() {
  mode = GAME;
  dropBall = true;
  lives = 3;
  ballX = width/2;
  ballY = height - 100;
  ballD = 25;
}
