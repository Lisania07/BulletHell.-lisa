void pause() {
 //PAUSE BUTTON
   fill(0);
  rect(750,50,50,50);
  stroke(255,0,0);
  line(740,35,740,65);
  line(760,35,760,65);
  //MID
  fill(255);
  textSize(150);
 text("PAUSE",200,320);
  
}

    void pauseClicks(){
       if (dist(mouseX, mouseY, 750,50 )<50){
   mode=GAME;
    
   
    }
    }
