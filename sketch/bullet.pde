public class Bullet
{
  private float w;
  private float h;
  private float x;
  private float y;
  private PImage bg;
  private int speed = 250;
  private float scale = 0.7;

  public Bullet(float spaceX, float spaceY, float spaceW, float spaceH)
  {
    bg = loadImage("laserRed01.png");
    this.w = 18;
    this.h = 108;
    InitBulletLocation(spaceX, spaceY, spaceW, spaceH);
  }

  public void Show()
  {
    image(this.bg, this.x, this.y, this.w, this.h);
  }

  public void Move(float spaceX, float spaceY, float spaceW, float spaceH) 
  {
    this.y-= this.speed * scale;
    if (this.y <= - displayHeight) 
    {
      InitBulletLocation(spaceX, spaceY, spaceW, spaceH);
    }
  }
  
  private void InitBulletLocation(float spaceX, float spaceY, float spaceW, float spaceH)
  {
    this.y = spaceY - this.h;
    this.x = spaceX + (spaceW / 2) - 9; 
  }
}
