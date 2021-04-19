void keyPressed () {
  if (key == 'a' || key == 'a') aKey = true;
  if (key == 'd' || key == 'd') dKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased () {
  if (key == 'a' || key == 'a') aKey = false;
  if (key == 'd' || key == 'd') dKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false;
}
