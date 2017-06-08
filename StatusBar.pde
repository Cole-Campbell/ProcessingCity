//Called in Mic class to access the input levels. Creating class.
Mic statusMic;
class StatusBar {
  
  PFont f;
  
  StatusBar() { 
  
    //calls font which is to be used for display. Creates instance of Mic class.
    f = createFont("Helvetica Neue", 24, true);
    statusMic = new Mic();
    
  }
  
  void paint() {

    //Created the status bar at the bottom. Colouring the text white and giving it the pt size of 24.
    //If statement to check if the input is above .1, once it is, the text, Blow Away the Clouds, "Disappears"
    //With a colour change
    fill(33, 33, 33);
    rect (0, 800, 1200, 50);
    fill(255);
    textFont(f, 24);
    
    if (statusMic.in.left.level()>=.1) {
      fill(33, 33, 33);
    }
    text("Blow The Clouds Away", 40, 830);

  //Shows the current time while the project is running, so people can see that the CN Tower's colour does change with time.
    fill(255);
    int x = hour();
    int y = minute();
    int z = second();
    
    if (second()<10) {
      
      text(x, width-120, height-20);
      text(":0"+z, width-60, height-20);
      text(":"+y, width-93, height-20);
      
    } else if (minute()<10) {
      
      text(x, width-120, height-20);
      text(":0"+y, width-93, height-20);
      text(":"+z, width-60, height-20);
      
    } else if (hour()<10) {
      
      text("0"+x, width-120, height-20);
      text(":"+y, width-93, height-20);
      text(":"+z, width-60, height-20);
      
    } else if (second()<10 && minute()<10) {
      
      text(x, width-120, height-20);
      text(":0"+y, width-93, height-20);
      text(":0"+z, width-60, height-20);
      
    } else {
      text(x, width-120, height-20);
      text(":"+y, width-93, height-20);
      text(":"+z, width-60, height-20);
      
    }
  }
}