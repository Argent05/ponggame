void gameover() {


  background(255, 0, 0);
  fill(black);
  textSize(90);
println(leftscore, rightscore);
  if (leftscore>3) {
    text("LEFT PLAYER WINS", width/2, height/2);
println("?");
    countertext = countertext +1; 

    if (countertext <12) {
      fill(blue);
      text("LEFT PLAYER WINS", width/2, height/2);
    }

    if (countertext > 2) {
      fill(blue2);
      text("LEFT PLAYER WINS", width/2, height/2);
    }

    if (countertext == 15) {
      countertext = 0;
    }
  } else if (rightscore>3) {
    println("!");
    text("RIGHT PLAYER WINS", width/2, height/2);
    countertext = countertext +1; 

    if (countertext <12) {
      fill(blue);
      text("RIGHT PLAYER WINS", width/2, height/2);
    }

    if (countertext > 2) {
      fill(blue2);
      text("RIGHT PLAYER WINS", width/2, height/2);
    }

    if (countertext == 15) {
      countertext = 0;
    }
  }

  gameover.play();
}

void gameoverClicks() {
  gameover.pause();
  gameover.rewind();
  mode = INTRO;
  intro.rewind();
  intro.loop();
  leftscore = 0;
  rightscore = 0;
}
