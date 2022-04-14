void game() {
  background(0);
  ////paddles
  circle(leftx,lefty, leftd);
  circle(rightx,righty,rightd);
  
  //move paddles
  if (wkey == true) lefty = lefty -5;
  if (skey == true) lefty = lefty +5;
  if (upkey == true) righty = righty -5;
  if (downkey == true) righty = righty +5;
  
  
  //ball
  circle(ballx,bally,balld); // do ball movement, look at clicker game 
  
  //ball moving
   ballx = ballx +vx;  
  bally = bally +vy;
  
  //bouncing
  
    if (ballx<balld/2 || ballx > width - balld/2) {
   vx = vx * -1;
  }
  
  if (bally < balld/2 || bally > height - balld/2) {  // if y is smaller than 50, the radius of the circle, or if the y passes 800 -radius bounce
   vy = vy * -1; 
  }
  //bounce off pallets
    if (dist(leftx,lefty,ballx,bally)<150){
      vx= vx * -1;
      vy = vy* -1; 
    }
    
    
    
if (lefty < leftd/2) {
 lefty = leftd/2; 
}
 if (lefty > height-leftd/2) {
 lefty = height-leftd/2;
}   
    
    
    
  
  //if (lefty < balld/2 || bally > height - balld/2) {  // if y is smaller than 50, the radius of the circle, or if the y passes 800 -radius bounce
  // vy = vy * -1; 
  //}
  
  
}

void gameClicks() {
  
}
