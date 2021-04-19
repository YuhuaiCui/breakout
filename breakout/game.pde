void game() {
  background(123);
  
  //paddle
  strokeFill(5, black, white);
  circle(padX, padY, padD);
  
  //ball
  strokeFill(5, black, white);
  circle(ballX, ballY, ballD);
  ballX = ballX + vx;
  ballY = ballY + vy;
  
  //move paddles
  if (aKey == true && padX >= ballD/2) padX = padX - 3;
  if (dKey == true && padX <= width - (padD/2)) padX = padX + 3;
}

void gameClicks() {
  mode = PAUSE;
}
