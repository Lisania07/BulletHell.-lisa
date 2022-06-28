

class powerup extends GameObject{
  //CONSTRUCTOR
  powerup(float x, float y){
   super(x,y,0,0,20,#FA03B4,1);

  }
  
  
  void act(){
   super.act();
   
}
void show(){
  //super.show();
  fill(c);
  stroke(c);
  circle(x,y,size);
  
}
}
