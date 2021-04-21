//Daniel Cui
//Breakout
//pew pew

//pallet
color orange = #FD7F19;
color tan = #FBB533;
color sand = #FCEEAF;
color red = #EA2014;
color forest = #4F6F23;
color black = #2D2C2D;
color white = #E3E4D9;

//paddle
float padX, padY, padD;

//Arrays
int[] x;
int[] y;
boolean[] alive;
int brickD;
int n;
int tempX, tempY;

//ball
float ballX, ballY, ballD, vx, vy;
boolean dropBall;

//UI
int lives;

//RNG
float ballRNG;

//keyboard
boolean aKey, dKey, leftKey, rightKey;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

void setup() {
  size(800, 800);
  mode = INTRO;

  //initialize paddle
  padX = width/2;
  padY = height;
  padD = 100;

  //initialize ball
  ballX = width/2;
  ballY = height - 100;
  ballD = 25;

  //bricks
  brickD = 50;
  n = 45;
  x = new int[n];
  y = new int[n];
  tempX = 150;
  tempY = 100;

  int i = 0;
  while (i < n) {
    x[i] = tempX;
    y[i] = tempY;
    tempX = tempX + 60;
    if (tempX >= width - 150) {
     tempX = 150;
     tempY = tempY + 60;
    }
    i++;
  }
} //end of setup

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
} //end of draw
