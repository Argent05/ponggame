import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
boolean AI;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int OPTIONS = 4;
final int GAMEOVER = 3;
PFont thefont;
// entity variables
float leftx, lefty, leftd, rightx,righty, rightd; // paddles
float ballx, bally, balld; //ball
float vx, vy;

//scorign

int leftscore, rightscore, timer;

//ball color
int ballcolor;

//extra
float countertext = 1;

// sound variables
Minim minim;
AudioPlayer theme, goal, bump, gameover, intro;




//keyboard variables

boolean wkey,skey,upkey,downkey;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);

 
 //minim
  minim = new Minim(this);
   bump  = minim.loadFile("bump.wav");
   goal = minim.loadFile("goal.mp3");
   theme = minim.loadFile("mario bros theme.mp3");
   intro = minim.loadFile("intro.mp3");
   gameover = minim.loadFile("dramatic.mp3");
  
  
  
  ballcolor = yellow;
  thefont = createFont("walkthemoon.ttf", 128);
  textFont(thefont);
  //initalize paddles
  leftx = 0;
  lefty = height/2;
  leftd =200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  // initialize keyboard variables
  wkey = skey = downkey = upkey = false;
  
  //ball speed
    //vx= (-5 || 5);
  vx = random(7,-5);
  vy = random(5,-5);

  intro.loop();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
