void mouseReleased() {    
  if (mode == INTRO) {     // if mode is intro, then all the mouse clicks will be handled by introclicks
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == OPTIONS) {
    optionClicks();
  }
}
