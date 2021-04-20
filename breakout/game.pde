void game() {
  background(123);

  //UI
  easyText(CENTER, CENTER, 50, width/2, 100, "Lives: " + lives);
  if (ballY > height) {
    lives--;
    dropBall = true;
    ballX = width/2;
    ballY = height - 100;
    ballD = 25;
  }
  if (lives == 0) {
    mode = GAMEOVER;
  }
  
  //paddle
  easyStrokeFill(5, black, white);
  circle(padX, padY, padD);

  //ball
  easyStrokeFill(5, black, white);
  circle(ballX, ballY, ballD);

  //ball movement
  ballX = ballX + vx;
  ballY = ballY + vy;
  if (ballX < ballD/2 || ballX > width - ballD/2) {
    vx = vx * - 1;
  }
  if (ballY < ballD/2) {
    vy = vy * - 1;
  }
  if (dropBall == true) {
    vy = vy + 0.1;
  }
  if (dist(ballX, ballY, padX, padY) <= (ballD + padD)/2 && dropBall == true) {
    ballRNG = random(1, 2);
    if (ballRNG < 1.5) {
      vx = random(-0.1, -5);
    }
    if (ballRNG >= 1.5) {
      vx = random(0.1, 5);
    }
    dropBall = false;
  }
  if (dist(ballX, ballY, padX, padY) <= (ballD + padD)/2) {
    vy = vy * - 1;
    vx = (ballX - padX)/10;
    vy = (ballY - padY)/10;
  }

  //move paddles
  if (aKey == true && padX >= ballD/2) padX = padX - 3;
  if (dKey == true && padX <= width - (padD/2)) padX = padX + 3;
}

void gameClicks() {
  mode = PAUSE;
}
