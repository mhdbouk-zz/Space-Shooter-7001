PImage bg;
SpaceShip s;
void setup() 
{
  bg = loadImage("stars_preview.jpg");
  s = new SpaceShip();
}

void draw()
{
  image(bg, 0, 0, displayWidth, displayHeight);
  s.Show();
  if(mousePressed)
  {
    s.Move();
  }
}
