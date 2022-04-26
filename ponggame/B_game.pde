void game() {
  theme.play();
  background(0);
  ////paddles
  fill(green);
  circle(leftx,lefty, leftd);
  circle(rightx,righty,rightd);
  
  //move paddles
  if (wkey == true) lefty = lefty -5;
  if (skey == true) lefty = lefty +5;
 
 if( AI == false) { 
  if (upkey == true) righty = righty -5;
  if (downkey == true) righty = righty +5;
 } else {
   if (ballx> 400){
    if (bally> righty){
     righty = righty+5; 
    }
   if (bally<righty){
    righty = righty-6; 
     
   }
     
     
     
     
   }
   
 }
 
//center line 
strokeWeight(5);
stroke(255);
line(width/2,0,width/2,height);

//scoreboard
textSize(50);
fill(red);
text(leftscore,width/4,100);
fill(green);
text(rightscore,3*width/4,100);


timer = timer -1;
  //// intialize score 
  //rightscore = leftscore = 0;
  
  
 //scoring
 if (ballx <0) {
  rightscore++; 
   ballx = width/2;
   bally = height/2;
   timer = 20;
   ballcolor = green;
   goal.play();
   goal.rewind();
 }

if (ballx > 800){
 leftscore++;
 ballx = width/2;
 bally = height/2;
 timer =20;
 ballcolor = red;
 goal.play();
 goal.rewind();
  
} 
  //ball
  fill(ballcolor);
  circle(ballx,bally,balld); // do ball movement, look at clicker game 
  
  //ball moving
 if (timer< 0 ){
   ballx = ballx +vx;  
  bally = bally +vy;
 } 

  
  //bouncing
  
  //  if (ballx<balld/2 || ballx > width - balld/2) {
  // vx = vx * -1;
  //}
  
  if (bally < balld/2 || bally > height - balld/2) {  // if y is smaller than 50, the radius of the circle, or if the y passes 800 -radius bounce
   vy = vy * -1; 
  }
  //bounce off  left pallets
    if (dist(leftx,lefty,ballx,bally)<150){
      vx= (ballx-leftx)/10;
      vy = (bally - lefty)/10; 
      bump.play();
      bump.rewind();
    }
    
    
    
if (lefty < leftd/2) {
 lefty = leftd/2; 
}
 if (lefty > height-leftd/2) {
 lefty = height-leftd/2;
}   
    

    // bounce of right pallet
     if (dist(rightx,righty,ballx,bally)<150){
      vx= (ballx-rightx)/10;
      vy = (bally - righty)/10; 
      bump.play();
      bump.rewind();
    }
    
    
    
if (righty < rightd/2) {
 righty = rightd/2; 
}
 if (righty > height-rightd/2) {
 righty = height-rightd/2;
}      
    
    
  
  //if (lefty < balld/2 || bally > height - balld/2) {  // if y is smaller than 50, the radius of the circle, or if the y passes 800 -radius bounce
  // vy = vy * -1; 
  //}

  if (leftscore >3 || rightscore > 3){
    mode = GAMEOVER;
    theme.pause();
    
  }
  
  
  
}

void gameClicks() {
  theme.pause();
  theme.rewind();
  mode = PAUSE;
}
