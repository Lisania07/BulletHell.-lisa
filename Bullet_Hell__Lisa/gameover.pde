//IMAGES
PImage Gameover;

void gameover() {
  //background
  Gameover=loadImage("gameover.jpeg"); 
  image(Gameover, width/2, height/2, width, height);
  
  //exit
  fill(0);
  rect(600, 50, 100, 50);

  //text
  textSize(15);
  fill(255);
  text("PRESS TO REStart", 600, 650);
  textSize(20);
  text("EXIT", 577, 57);
  text("HIGHSCORE:"+highscore, 150, 50);
 
  //HIGHSCORE

  if (score>highscore) {
    highscore=score;
  }
 
 

}


void gameoverClicks() {

  if (mouseX>550 && mouseX<650 && mouseY>25 && mouseY<75) {
    exit();
  } else {
    mode=INTRO;
  }
}
