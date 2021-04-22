void game() {
  background(123);

  //UI
  easyText(sand, CENTER, CENTER, 50, width/2, height/2, "Lives: " + lives);
  if (ballY > height) {
    lives--;
    dropBall = true;
    ballX = width/2;
    ballY = height - 100;
    ballD = 25;
    padX = width/2;
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
    vy = 0;
    vy = vy + 0.3;
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

  //bricks
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
    manageBricks(i);
    }
    i++;
  }

  //move paddles
  if (aKey == true && padX >= ballD/2) padX = padX - 3;
  if (dKey == true && padX <= width - (padD/2)) padX = padX + 3;
}

void gameClicks() {
  mode = PAUSE;
}

void manageBricks(int i) {
  easyStrokeFill(0, 0, 0);
  if (y[i] == 100) fill(neon);
  if (y[i] == 160) fill(oj);
  if (y[i] == 220) fill(pink);
  if (y[i] == 280) fill(purp);
  if (y[i] == 340) fill(blue);
  circle(x[i], y[i], brickD);
  if (dist (ballX, ballY, x[i], y[i]) < ballD/2 + brickD/2) {
    vx = (ballX - x[i])/10;
    vy = (ballY - y[i])/10;
    alive[i] = false;
    
  }
}
