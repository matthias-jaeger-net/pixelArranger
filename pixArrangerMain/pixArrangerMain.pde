void setup() {
  size(800, 800);
  PImage input = loadImage("data/input.jpg");
  input.resize(width, height);
  background(input);
}
