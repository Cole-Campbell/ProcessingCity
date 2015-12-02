
class StatusBar {
  PFont f;
  StatusBar() { 
    f = createFont("Helvetica Neue", 24, true);
  }
  void paint() {

    fill(33, 33, 33);
    rect (0, 800, 1200, 50);
    fill(255);
    textFont(f, 24);
    int x = hour();
    int y = minute();
    int z = second();
    text(x, width-120, height-20);
    if (second()<10) {
      text(":0"+z, width-60, height-20);
      text(":"+y, width-93, height-20);
    } else if(minute()<10){
      text(":0"+y, width-93, height-20);
      text(":"+z, width-60, height-20);
    }
    else if(second()<10 && minute()<10){
      text(":0"+y, width-93, height-20);
      text(":0"+z, width-60, height-20);
    }
    else {
      text(":"+y, width-93, height-20);
      text(":"+z, width-60, height-20);
    }
    
    
    
    
  }
}