class enemy3 extends GameObject {
  int threshold;
  int cooldown;
  enemy3() {
    super(random(780, 800), random(100, 250), random(-5, 0), 3, enemysize+10, #FFFF00, 1);
    threshold=80;
    cooldown=threshold;
  }

  void act() {
    super.act();

    cooldown++;
    if (cooldown>=threshold) {
      objects.add(new EnemyBullet(x, y, random(-6, -9), random(8, 10)));
      cooldown=0;
    }



    // collision
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
        }
      }
      i++;
    }
    //remove if goes off screen
    if (offScreen())lives=0;
  }
}
