//Lisa
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


PFont haha;
//gloabal variables

final int INTRO=1;
final int PAUSE = 2;
final int GAME=3;
final int GAMEOVER = 4;
final int SHOP=5;
final int HELP=6;
final int COLOR=7;

int mode=INTRO;

//keyboard
boolean wkey, akey, skey, dkey, spacekey;
boolean up, down, left, right, lkey;

//Oother variasbles
int timer;
int score;
int highscore;
int counter;
int newcoins;
int coins;
int bank;
int live;
boolean one;
float sliderY;
float enemysize;

//array listt
ArrayList<GameObject> objects;
Starfighter player1;

PImage[]gif;
int nof;
int f;



void setup() {
  size(800, 600);
  rectMode(CENTER);
  textMode(CENTER);
  imageMode (CENTER);
  noStroke();

  //game function
  timer=5;
  score=0;
  highscore=score;
  counter=0;
  bank=0;
  newcoins=0;
  coins=0;
  live=0;
  one=false;
  //new objects
  objects=new ArrayList <GameObject>();
  player1=new Starfighter();
  objects.add(player1);
  sliderY=325;
  enemysize=30;
  haha=createFont("Mabook.ttf",20);
  
    //gif----------------------------
  nof=5;
  gif= new PImage[nof];

  int u=0;
  while (u<nof) {
    gif[u]=loadImage("frame_"+u+"_delay-0.06s.gif");

    u=u+1;
  }
}

void draw() {
  if (mode==INTRO)        intro();
  else if (mode==GAME)     game();
  else if (mode==PAUSE)    pause();
  else if (mode==GAMEOVER) gameover();
  else if (mode==COLOR) size();
  else  println("Error: Mode = "+mode);
}
