void gameover() {
  background(forest);
  if (lives == 0) {
    easyStrokeFill(5, 0, orange);
    easyText(CENTER, CENTER, 100, width/2, 300, "YOU LOSE");
  }
  if (lives > 0) {
    easyStrokeFill(5, 0, red);
    easyText(CENTER, CENTER, 100, width/2, 300, "YOU WIN");
  }
  easyStrokeFill(5, 0, white);
  easyText(CENTER, CENTER, 25, width/2, 600, ">Click anywhere to restart<");
}

void gameoverClicks() {
  mode = INTRO;
}
