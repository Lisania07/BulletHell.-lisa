class EnemyParticles extends GameObject {

  //CONS
  EnemyParticles(float x, float y, float vx, float vy, color c) {
    super(x, y, random(-5,5), random(-5,5), 5, c, 1);
  }

  void act() {

    super.act();
     
  }
  
  void show() {
    super.show();
  }
}
