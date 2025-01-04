class Tile {
  int x; 
  int y;
  char label;
  color tileColor;
  boolean clicked;
  float side;

  Tile(int tlx, int tly, int s) {
    x = tlx;
    y = tly;
    side = s;
    label = 'b';
    tileColor = color(234, 100, 25);
    clicked = false;
  }

  char getLabel() {
    return label;
  }

  boolean isClicked() {
    return clicked;
  }

  float getSide() {
    return side;
  }

  color getColor() {
    return tileColor;
  }

  int getX() {
    return x;
  }

  int getY() {
    return y;
  }

  void setLabel(char c) {
    if (label =='b') {
      label = c;
    }
  }

  void setColor(color c1) {
    tileColor = c1;
  }

  void click() {
    clicked = true;
  }

  void drawTile() {
    fill(tileColor);
    rect(x, y, side, side, 10);
    fill(0);
    textSize(.7*side);
    textAlign(CENTER, CENTER);
    if (label == 'b') {
      text("", x+side/2, y+side/2);
    } else {
      text(label+"", x+side/2, y +side/2);
    }
  }

  boolean inFocus(int mx, int my) {
    if (mx >= x && mx <= x+side && my>= y && my <= y +side) {
      return true;
    }
    return false;
  }

  void changeClick() {
    clicked = true;
  }
}