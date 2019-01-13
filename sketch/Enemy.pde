public class Enemy
{
  private float w;
  private float h;
  private float x;
  private float y;
  private PImage bg;
  private float moveSpeed = 1;
  private float scale = 0.3;
  
  public Enemy(float startX, float spacing, float offset)
  {
    bg = loadImage("Enemy.png");
    this.w = 70;
    this.h = 70;
    this.x = startX + (spacing - (this.w / 2)) * offset;
    this.y = - this.h;
  }
  
  public void Show()
  {
    image(bg, this.x, this.y, this.w, this.h);
  }
  
  public void Move()
  {
    this.y += moveSpeed;
  } 
}
