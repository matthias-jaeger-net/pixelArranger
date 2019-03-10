void imageGrid(PImage img, int scaler) 
{
  imageMode(CENTER);
  for (int i = 0; i < width; i+=scaler) 
  {
    for (int j = 0; j < height; j+=scaler) 
    {
      PImage output = getImageFromArea(img, i, j, scaler, scaler);
      pushMatrix();
      translate(i + scaler/2, j + scaler/2);
      rotate(PI/2);
      image(output, 0, 0);
      popMatrix();
    }
  }
}  
  
