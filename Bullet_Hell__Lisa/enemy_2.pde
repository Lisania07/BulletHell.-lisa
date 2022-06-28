class enemy2 extends GameObject {

  int threshold;
  int cooldown;
  enemy2() {
    super(random(0, 20), random(0, 150), random(0, 5), 3, enemysize+20, #FF0000, 1);
    threshold=80;
    cooldown=threshold;
  }

  void act() {
    super.act();
    //shoot
    cooldown++;
    if (cooldown>=threshold) {
      objects.add(new EnemyBullet(x, y, random(6, 9), random(8, 10)));
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
        }
      }

      i++;
    }

    //remove if goes off screen
    if (offScreen())lives=0;
  }
}
