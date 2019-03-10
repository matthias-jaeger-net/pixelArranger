public void setup() 
{
  /** Create a square canvas */
  size(800, 800);

  /** Load and scale data */
  PImage input = loadImage("data/input.jpg");
  input.resize(width, height);

  /** Set up a buffer image for the output */


  for (int i = 0; i < width; i+=100) 
  {
    for (int j = 0; j < height; j+=100) 
    {
      pushMatrix();
      PImage output = getImageFromArea(input, i, j, 100, 100);
      image(output, i, j);
      popMatrix();
    }
  }
}


/** Read image data and write to output */
/*for (int i = 0; i < width - 1; i++) 
 {
 for (int j = 0; j < height - 1; j++) 
 {
 // Get neibouring pixels, loops must be: -1
 color s1 = input.get(i + 0, j - 1);
 color s2 = input.get(i + 1, j + 0);
 color s3 = input.get(i + 0, j + 1);
 color s4 = input.get(i + 0, j + 0);
 
 // Convolution formula, here we have to come up with something nice
 float convR = (red(s1)   + red(s2)   + red(s3)  + red(s4))   / random(12);
 float convG = (green(s1) + green(s2) + red(s3)  + green(s4)) / random(12)  ;
 float convB = (blue(s1)  + blue(s2)  + blue(s3) + blue(s4))  / random(12);
 
 // Writing each result to the output
 output.set(i, j, color(convR + convG + convB));
 }
 }*/

/** Finished writing, set display */
//output.updatePixels();
