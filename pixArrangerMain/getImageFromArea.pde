public PImage getImageFromArea(PImage img, int x, int y, int w, int h) 
{
  /** Retrieve a rectangular area from a PImage */
  color[] colors = new color[w * h];
  int index = 0;
  for (int j = 0; j < h; j++) {
    for (int i = 0; i < w; i++) {
      colors[index]= img.get(i + x, j + y);
      index++;
    }
  }

  /** Store the retrieved data in an output image */
  PImage output = createImage(w, h, RGB);  
  index = 0;
  for (int j = 0; j < h; j++) {
    for (int i = 0; i < w; i++) {
      output.set(i, j, colors[index]);
      index++;
    }
  }

  return output;
}
