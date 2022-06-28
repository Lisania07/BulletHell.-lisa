class Enemy extends GameObject {
  int threshold;
  int cooldown;
  //constructor
  Enemy() {
    super(random(width), -20, 0, 5, enemysize-10, #00FF00, 1);
    threshold=60;
    cooldown=threshold;
  }

  void act() {
    super.act();

    //managing gun
    cooldown++;
    if (cooldown>=threshold) {
      objects.add(new EnemyBullet(x, y, 0, 10));
      cooldown=0;
    }

    //collision
    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingwith(obj)) {
          lives--;
          score++;

          objects.add(new EnemyParticles( x+5, y+5, random(-5, 5), random(-5, 5), c) );
          objects.add(new EnemyParticles( x-5, y+5, random(-5, 5), random(-5, 5), c) );
          objects.add(new EnemyParticles( x-5, y-5, random(-5, 5), random(-5, 5), c) );
          objects.add(new EnemyParticles( x+5, y-5, random(-5, 5), random(-5, 5), c) );
          objects.add(new EnemyParticles( x-3, y+3, random(-5, 5), random(-5, 5), c) );
          objects.add(new EnemyParticles( x+3, y+3, random(-5, 5), random(-5, 5), c) );
          objects.add(new EnemyParticles( x-3, y-3, random(-5, 5), random(-5, 5), c) );
          objects.add(new EnemyParticles( x+3, y-3, random(-5, 5), random(-5, 5), c) );
          
          objects.add(new powerup(x,y));
        }
      }

      i++;
    }


    //remove if goes off screen
    if (offScreen())lives=0;
  }
}
