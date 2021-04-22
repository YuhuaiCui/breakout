void pause() {
  while (t == 1) {
  fill(black, 100);
  rect(0, 0, width, height);
  t = 0;
  }
  easyStrokeFill(5, 0, orange);
  easyText(CENTER, CENTER, 100, width/2, height/2, "PAUSED");
}

void pauseClicks() {
  mode = GAME;
}
