public class Bullet
{
  private float w;
  private float h;
  private float x;
  private float y;
  private PImage bg;
  private int speed = 200;
  private float scale = 0.7;

  public Bullet(float spaceX, float spaceY, float spaceW, float spaceH)
  {
    bg = loadImage("new_bullet.png");
    this.w = 47;
    this.h = 47;
    this.y = spaceY - this.h;
    this.x = spaceX + (spaceW / 2) - 25;
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
      this.y = spaceY - this.h;
      this.x = spaceX - 25 + spaceW / 2;
    }
  }
}
