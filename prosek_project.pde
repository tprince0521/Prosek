void setup() {
  size(1400, 800);
  background(200);
  butterflys(750);
}

void butterflys(int amt) {
  for (int i = 0; i <= amt; i++) {
    butterfly(random(20, 1370), random(20, 750));
  }
}

void butterfly(float xVal, float yVal) {
  push();
  translate(xVal, yVal);
  scale(random(.25, .75));
  body();
  wings(xVal, yVal);
  pop();
}

void body() {
  fill(0, 0, 0);
  ellipse(0, 0, 10, 50);
  noFill();
  arc(38, -22, 70, 70, PI, PI + QUARTER_PI);
  arc(-38, -22, 70, 70, PI + HALF_PI + QUARTER_PI, TWO_PI);
}

void wings(float xVal, float yVal) {
  fill(xVal/5.5, yVal/3.15, 100);
  mainWing(-2, -25, -45);
  mainWing(30, 5, 45);
  backWing(-15, -5, -135);
  backWing(-10, 25, -235);
}

void mainWing(int xVal, int yVal, int degree) {
  push();
  translate(xVal, yVal);
  rotate(radians(degree));
  ellipse(-20, -38, 40, 100);
  pop();
}

void backWing(int xVal, int yVal, int degree) {
  push();
  translate(xVal, yVal);
  rotate(radians(degree));
  ellipse(-20, -38, 25, 70);
  pop();
}
