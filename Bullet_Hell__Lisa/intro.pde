


void intro() {
 
 image(gif[f], width/2, height/2, width, height);
  println(frameCount);
  if (frameCount%3==0) f=f+1;
  if (f==nof)f=0;
  textSize(100);


textFont(haha);
fill(255);
  tactile(width/2-150, height/2+250, 100, 45);
  rect(width/2-150, height/2+250, 100, 45);
  tactile(width/2+150, height/2+250, 100, 45);
  rect(width/2+150, height/2+250, 100, 45);
  textSize(15);
  fill(0);
  text("EASY", 210, 560);
  text("HARD", 505, 560);
  fill(255);
  textSize(0);



  //Bullet hell text

fill(255);
  textSize(100);
  if (counter<70) {
    text("BULLET HELL", 100, height/2);
  } else if (counter>=70) {
    counter=0;
  }





  //COLOR;
  tactile(700, 250, 100, 45);
  stroke(0);
  fill(255);
  rect(700, 250, 100, 45);
  fill(0);
  textSize(30);
  text("size", 680, 260);
  
 

  //RESET
  reset();
}

void tactile(int x, int y, int a, int b) {
  if (mouseX<x+a && mouseX>x-a && mouseY<y+b && mouseY>y-b) {
    strokeWeight(3);
  } else {
    strokeWeight(1);
  }
}

void introClicks() {


  if (mouseX>650&mouseX<750&&mouseY>227&&mouseY<273) {

    mode=COLOR;
  }
  
 

  if (mouseX>width/2+100&&mouseX<width/2+200&&mouseY>height/2+227&&mouseY<height/2+273) {
    mode=GAME;
   one=true;

  }
  if (mouseX>width/2-200&&mouseX<width/2-100&&mouseY>height/2+227&&mouseY<height/2+273) {
    mode=GAME;
  one=false;
   
   
  }
}
