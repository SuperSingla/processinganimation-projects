Tile[] board;
int turn;

void setup() {
  size(600, 600);
  turn = 0; 
  int sideLength = width/5;
  int tx, ty;
  tx = sideLength;
  ty = sideLength;
  int count = 0;
  board = new Tile[9];
  for (int i = 0; i <9; i++) {
    board[i] = new Tile(tx, ty, sideLength);
    tx+=sideLength;
    count++;
    if (count%3 == 0) {
      tx = sideLength;
      ty += sideLength;
    }
  }
}

void draw() {
  drawBoard();
  if (isWinner()) {
    displayWinner();
    noLoop();
  } else {
    int c =0;
    for (int i = 0; i < 9; i++) {
      if (board[i].isClicked()) {
        c++;
      }
    }
    if (c == 9) {
      noLoop();
    }
  }
} 

void drawBoard() {
  for (int i = 0; i<board.length; i++) {
    board[i].drawTile();
  }
}

void mouseMoved() {
  for (int i =0; i<9; i++) {
    if (board[i].inFocus(mouseX, mouseY)) {
      board[i].setColor(color(100, 150, 100));
    } else {
      board[i].setColor(color(234, 100, 25));
    }
  }
}

void mouseClicked() {
  for (int i = 0; i<9; i++) {
    if (board[i].inFocus(mouseX, mouseY)) {
      if (board[i].getLabel() == 'b') {
        if (turn%2==0) {
          board[i].setLabel('X');
          board[i].changeClick();
        } else {
          board[i].setLabel('O');
          board[i].changeClick();
        }
        turn++;
      }
    }
  }
}

void reset() {
}

void drawResetButton() {

  fill(66, 244, 203);
  rectMode(CENTER);
  rect(width/2, height/5, 100, 100);
}

boolean isTie() {

  char a = board[0].getLabel();
  char b = board[1].getLabel();
  char c = board[2].getLabel();
  char d = board[3].getLabel();
  char e = board[4].getLabel();
  char f = board[5].getLabel();
  char g = board[6].getLabel();
  char h = board[7].getLabel();
  char i = board[8].getLabel();
  
  
  







  return false;
}


void displayTie() {
}
void displayWinner() {

  textSize(board[0].getSide()*.5);
  float s = board[0].getSide();
  fill(255, 255, 255, 170);
  rect(s, s, s*3, s*3);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Game Over", s*2.5, height/2);
  //fill(100, 150, 200);
  fill(255, 0, 0);
  if (turn%2==1) {
    text("Winner: X", width/2, board[0].getSide()*4.5);
  } else {
    text("Winner: 0", width/2, board[0].getSide()*4.5);
  }
}

boolean isWinner() {

  char a = board[0].getLabel();
  char b = board[1].getLabel();
  char c = board[2].getLabel();
  char d = board[3].getLabel();
  char e = board[4].getLabel();
  char f = board[5].getLabel();
  char g = board[6].getLabel();
  char h = board[7].getLabel();
  char i = board[8].getLabel();




  if (a != 'b' && a == b && b ==c) {
    return true;
  } else if (a != 'b' && a == e && e == i) {
    return true;
  }
  if (d != 'b' && d == e && e == f) {
    return true;
  }
  if (g != 'b' && g == h && h == i) {
    return true;
  }

  if (a != 'b' && a == d && d == g) {
    return true;
  }

  if (b != 'b' && b == e && e == h) { 
    return true;
  }

  if (c != 'b' && c == f && f == i) {
    return true;
  }
  if (g != 'b' && g == e && e == c) {
    return true;
  }


  return false;
}
