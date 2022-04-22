void intro() {
  background(red);
  strokeWeight(7);
  fill(white);
  tactile(100, 500, 200, 100);  // ask why the tactile not working properly 
  rect(100, 500, 200, 100);
  fill(black);
  textSize(30);
  text("1 player", width/4, 550);
  fill(white);
  rect(500, 500, 200, 100);
  fill(black);
  text("2 player", 600, 550);


  fill(white);
  textFont(thefont);
  textSize(100);
  text("PONG Game", width/2, 100);

  countertext = countertext +1; 

  if (countertext <12) {
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
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
}
