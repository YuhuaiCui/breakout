void easyStrokeFill(float size, int strokeColor, int fillColor) {
  stroke(strokeColor);
  strokeWeight(size);
  fill(fillColor);
}

void easyText(int hAlign, int vAlign, float size, float x, float y, String text) {
 textAlign(hAlign, vAlign);
 textSize(size);
 text(text, x, y);
}
