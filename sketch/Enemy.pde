public class Enemy
{
  private float w;
  private float h;
  private float x;
  private float y;
  private PImage bg;
  private float moveSpeed = 15;
  private float scale = 0.3;
  private float spacing;
  private float offset;
  
  public Enemy(float startX, float startY, float spacing, float offset, int imageName)
  {
    bg = loadImage("enemy-" + imageName + ".png");
    this.spacing = spacing;
    this.offset = offset;
    this.w = bg.width;
    this.h = bg.height;
    this.x = startX;
    this.y = startY;
  }
  
  public void Show()
  {
    image(bg, this.x, this.y, this.w, this.h);
  }
  
  public void Move()
  {
    this.y += moveSpeed;
  } 
  
  public void RestartEnemy() {
    float enemyX = random(50, width - 50);
    
    this.x = enemyX;
    this.y = -10;
  }
  
  public float GetEnemyY() {
    return this.y;
  }
}
