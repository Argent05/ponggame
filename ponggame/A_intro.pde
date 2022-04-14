void intro() {
   background(red);
  strokeWeight(7);
  fill(white);
  rect(100, 500, 200, 100);
   fill(black);
   textSize(30);
   text("Start", width/4,550);
   fill(white);
   rect(500, 500, 200, 100);
   fill(black);
   text("Options", 600,550);
   
   
      fill(white);
   textFont(thefont);
   textSize(100);
   text("PONG Game", width/2, 100);
   
  countertext = countertext +1; 
  
  if(countertext <12){
     fill(blue);
   text("PONG Game", width/2, 100);
    
  }
  
  if (countertext > 2) {
      fill(blue2);
   text("PONG Game", width/2, 100);
  }
   
  if (countertext == 15) {
     countertext = 0;
  }
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
    mode = GAME;
  }


  if (mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 600){
  mode = OPTIONS;
  
}

}
