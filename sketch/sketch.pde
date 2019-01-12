SpaceShip s;

private static final byte xPOS = 0, yPOS = 1;
private static final byte SPD  = 2, COR  = 3;

private static final byte numSTARS = 100;
private static final int[][] stars = new int[numSTARS][4];

private static final byte maxSPEED = 10;
private static final byte starSIZE = 4;

private int gw = 1000, gh = 800;
private static final color bgCOLOR = 0;

void setup() {
  gw = displayWidth;
  gh = displayHeight;
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
  s.Show();
  if (mousePressed)
  {
   s.Move(); 
  }
}
