//FONT
PFont ut;

void game() {
  background(0);
  //objects
  addObj();
  gameEng();
  debug();




  fill(0);

  //pause button
  stroke(255, 0, 0);
  rect(750, 50, 50, 50);
  triangle(740, 35, 740, 65, 765, 48);
  stroke(255);

  //font
  ut=createFont("Coffee for Breakfast.ttf", 10);
}
//ADDING OBJECTS TO SCREEN
void addObj() {
  objects.add(0, new Star());
  if (one==true) {
    if (frameCount%10==0) objects.add(new Enemy());
    if (frameCount%35==0) objects.add(new enemy2());
    if (frameCount%30==0) objects.add(new enemy3());
  } else if (one==false) {
    if (frameCount%80==0) objects.add(new Enemy());
    if (frameCount%80==0) objects.add(new enemy2());
    if (frameCount%80==0) objects.add(new enemy3());
  }
}
  // GAME ENGIN WORK
  void gameEng() {
    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      obj.act();
      obj.show();
      if (obj.lives==0) {
        objects.remove(i);
      } else {
        i++;
      }
    }
  }
  //DEBUG SHOW TIMES
  void debug() {
    //fill(255);
    //text(frameRate, 20, 20);
    //text(objects.size(), 20, 40);
    textSize(15);
    fill(255);
    text("lives", 20, 50);
    text(player1.lives+live, 100, 50);
    text("score", 20, 75);
    text(score, 100, 75);
  }

  void gameClicks() {
    if (dist(mouseX, mouseY, 750, 50 )<50) {
      mode=PAUSE;
    }
  }
