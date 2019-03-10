PImage imageConvolution(PImage img) {

  /** Read image data and write to output */
  PImage output = createImage(img.width, img.height, RGB);
  
  for (int i = 0; i < width - 1; i++) 
  {
    for (int j = 0; j < height - 1; j++) 
    {
      // Get neibouring pixels, loops must be: -1
      color s1 = img.get(i + 0, j + 1);
      color s2 = img.get(i + 1, j + 0);
      color s3 = img.get(i + 0, j - 1);
      color s4 = img.get(i - 1, j + 0);

      // Convolution formula, here we have to come up with something nice
      float convR = (red(s1)   + red(s2)   + red(s3)  + red(s4))   / 10;
      float convG = (green(s1) + green(s2) + red(s3)  + green(s4)) / 3;
      float convB = (blue(s1)  + blue(s2)  + blue(s3) + blue(s4))  / 200;

      // Writing each result to the output
      output.set(i, j, color(convR + convG + convB));
    }
  }

  /** Finished writing, set display */
  return output;
 
}
