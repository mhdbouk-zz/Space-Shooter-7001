public class SpaceShip
{
  private float w;
  private float h;
  private float x;
  private float y;
  private PImage bg;
  private Bullet bullet;
  private int moveSpeed = 100;
  private float scale = 0.3;
  
  public SpaceShip()
  {
    bg = loadImage("playerShip1_red.png");
    this.w = 150;
    this.h = 150;
    this.x = (displayWidth / 2) - (this.w / 2);
    this.y = displayHeight - 200;
    bullet = new Bullet(this.x, this.y, this.w, this.h);
  }
  
  public void Show()
  {
    image(bg, this.x, this.y, this.w, this.h);
    bullet.Show();
    bullet.Move(this.x, this.y, this.w, this.h);
  }
  
  public void Move()
  {
    //if (this.y < mouseY)
    //{
    //  this.y += moveSpeed * scale;
    //}
    //else
    //{
    //  this.y -= moveSpeed * scale;
    //}
    //if (this.x < mouseX)
    //{
    //  this.x += moveSpeed * scale;
    //}
    //else
    //{
    //  this.x -= moveSpeed * scale;
    //}
    this.y = mouseY - this.h / 2;
    this.x = mouseX - this.w / 2;
  } 
}
