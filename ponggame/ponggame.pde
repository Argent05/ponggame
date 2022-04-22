int mode;
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






//keyboard variables

boolean wkey,skey,upkey,downkey;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
 
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
