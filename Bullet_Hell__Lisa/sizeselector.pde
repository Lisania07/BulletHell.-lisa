

void size() {

  fill(255);
  rect(width/2, height/2, 500, 400);

  //indicator
  fill(#FF0000);
  rect(500, 300, enemysize, enemysize);
  stroke(0);
  //confirm
  fill(255);
  tactile(400, 450, 150, 50);
  rect(400, 450, 150, 50);
  fill(0);
  text("Select enemy size", 255, 180);
  text("Confirm", 355, 458);
  stroke(0);
  strokeWeight(3);
  line(300, 310, 300, 375);
  circle(300, sliderY, 10);
  enemysize= map(sliderY, 310, 375, 30, 50);
  if (mouseX>295&&mouseX<305&&mouseY>310&&mouseY<375) {
    sliderY=mouseY;
  }
}

void mouseDragged() {
  if (mouseX>295&&mouseX<305&&mouseY>310&&mouseY<375) {
    sliderY=mouseY;
  }
}

void mouseReleased() {
  if (mouseX>295&&mouseX<305&&mouseY>310&&mouseY<375) {
    sliderY=mouseY;
  }
}

void controlSlider() {
  if (mouseX>295&&mouseX<305&&mouseY>310&&mouseY<375) {
    sliderY=mouseY;
  }
}
void sizeClicks() {


  
  if (mouseX>325&& mouseX<475 && mouseY>425&& mouseY<475) {
    mode=INTRO;
  }
}
