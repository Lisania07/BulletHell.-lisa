void mousePressed() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  } else if (mode==COLOR) {
    sizeClicks();
  } else println("unhandled click");
}




  
    
void keyPressed() {
  if (key=='w'||key=='W') wkey=true;
  if (key=='a'||key=='A') akey=true;
  if (key=='s'||key=='S') skey=true;
  if (key=='d'||key=='D') dkey=true;
  if (key==' ') spacekey=true;
  
  if (keyCode==UP) up=true;
  if (keyCode==DOWN) down=true;
  if (keyCode==LEFT) left=true;
  if (keyCode==RIGHT) right=true;
   if (key=='l'||key=='L') lkey=true;
}

void keyReleased() {
  if (key=='w'||key=='W') wkey=false;
  if (key=='a'||key=='A') akey=false;
  if (key=='s'||key=='S') skey=false;
  if (key=='d'||key=='D') dkey=false;
  if (key==' ') spacekey=false;
  
   if (keyCode==UP) up=false;
  if (keyCode==DOWN) down=false;
  if (keyCode==LEFT) left=false;
  if (keyCode==RIGHT) right=false;
   if (key=='l'||key=='L') lkey=false;
}


void reset() {

  //size(800, 600);
  rectMode(CENTER);
  textMode(CENTER);
  imageMode (CENTER);
  objects=new ArrayList <GameObject>();
  player1=new Starfighter();
  objects.add(player1);
  timer=20;
  score=0;
}
