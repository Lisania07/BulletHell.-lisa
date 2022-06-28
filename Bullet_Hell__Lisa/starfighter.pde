PImage ship;

class Starfighter extends GameObject {
  
  int cooldown, threshold;

  //CONSTRUCTOR
  Starfighter() {
    super(width/2, height/2, 0, 0, 60, #FF0000,10);
    threshold=10;
    cooldown=threshold;
  ship=loadImage("ship.png");    
  }

  void act() {
    super.act();
//managing guns
    cooldown++;
    if (spacekey && cooldown>=threshold) {
      objects.add(new Bullet(x,y));
      cooldown=0;
    }

    //move
    if (wkey==true)y=y-5;
    if (akey==true)x=x-5;
    if (dkey==true)x=x+5;
    if (skey==true)y=y+5;
    // if(spacekey==true) objects.add(new Bullet());
    //edge
    if (x<0) x=0;
    if (x>width)x=width;
    if (y<0) y=0;
    if (y>height)y=height;

  
   


    //decelarate
    if (!wkey &&!skey) vy=vy*0.9;
    if (!akey &&!dkey)vx=vx*0.9;
    x+=vx;
    y+=vy;

    //collision WITH EME1
    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingwith(obj)) {
          lives--;
          obj.lives=0;
        }
      }
      i++ ;
    }
    //eme2
    int n=0;
    while (n<objects.size()) {
      GameObject obj=objects.get(n);
      if (obj instanceof enemy2) {
        if (collidingwith(obj)) {
          lives--;
          obj.lives=0;
        }
      }
      n++ ;
    }
    //eme3
    int u=0;
    while (u<objects.size()) {
      GameObject obj=objects.get(u);
      if (obj instanceof Enemy3Bullet) {
        if (collidingwith(obj)) {
          lives--;
          obj.lives=0;
        }
      }
      u++ ;
    }
    //pwrup
    int w=0;
    while (w<objects.size()) {
      GameObject obj=objects.get(w);
      if (obj instanceof powerup) {
        if (collidingwith(obj)) {
         lives++;
          obj.lives = 0;
        }
      }
      w++ ;
    }
  }
    
  void show() {
    //super.show();
    image(ship,x,y);
    // END GAME
    if (lives==0) {
      mode=GAMEOVER;
    }
  }
}
   



 
