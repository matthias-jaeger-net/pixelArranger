void setup() 
{
  /** Create a square canvas */
  size(800, 800);
  background(255);
  
  /** Load and scale data */
  PImage input = loadImage("data/input.jpg");
  input.resize(width, height);

  PImage funky = imageConvolution(input);
  imageGrid(funky, 100);

  for (int i = 0; i < 200; i++) 
  {
    int x = floor(random(width-100));
    int y = floor(random(height-100));
    PImage output = getImageFromArea(input, x, y, floor(random(width-100)), floor(random(width-100)));
    PImage actual = imageConvolution(output);
    image(actual, floor(random(width-100)), floor(random(width-100)));
  }
}
