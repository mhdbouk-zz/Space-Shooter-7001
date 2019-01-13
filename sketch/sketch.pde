SpaceShip s;
PImage logo;
private static final byte xPOS = 0, yPOS = 1;
private static final byte SPD  = 2, COR  = 3;

private static final byte numSTARS = 100;
private static final int[][] stars = new int[numSTARS][4];

private static final byte maxSPEED = 10;
private static final byte starSIZE = 4;

private int gw = 1000, gh = 800;
private static final color bgCOLOR = 0;

private static final ArrayList<Enemy> enemies = new ArrayList<Enemy>();

int stage = 0;

void setup() {
  logo = loadImage("logo.png");
  gw = displayWidth;
  gh = displayHeight;
  size(1366, 768);
  
  float waveStartCoord = random(displayWidth/2);
  
  for (int i = 0; i < 4; i++){
    enemies.add(new Enemy(waveStartCoord, 150, i));
  }
  
  print(enemies);
  
   for (byte num=numSTARS-1; num>-1; num--) {
        stars[num][xPOS] = (int) random(gw);
        stars[num][yPOS] = (int) random(gh);
        stars[num][SPD]  = (int) random(1, maxSPEED);
        stars[num][COR]  = (int) random(128) + 128;
    }
    s = new SpaceShip();
}

void draw() { 
  background(bgCOLOR);
    for (byte num=numSTARS-1; num>-1; num--) {
        stars[num][yPOS] = ( stars[num][yPOS] + stars[num][SPD] ) % gh;

        fill( stars[num][COR] );
        ellipse( stars[num][xPOS], stars[num][yPOS], starSIZE, starSIZE );
    }
  if (stage == 0) {
    float imageWidth = gw - 50;
    float imageHeight = imageWidth * 228 / 599;
    image(logo, (gw / 2) - (imageWidth / 2), (gh / 2) - (imageHeight / 2), imageWidth, imageHeight);
    if (mousePressed) {
      stage = 1;
      s.Show();
    }
  } else {
    s.Show();
    if (mousePressed)
    {
    s.Move(); 
    }
  }
  
  for (int i = 0; i < enemies.size(); i++) {
    Enemy e = enemies.get(i);
    e.Show();
    e.Move();
  }
}
