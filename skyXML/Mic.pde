import ddf.minim.*;
public class Mic {
  Minim minim;
  AudioOutput out;
  AudioInput in;
  public Mic() {
    minim = new Minim(this);
    in = minim.getLineIn(); 
    in.enableMonitoring();
  }
  
  void paint(){
  fill(255);
  if (in.left.level()>=.5){
    fill(255,0,0);
  }
  rect(0, 805, in.left.level()*width-200, 40);
  rect(0, 805, in.right.level()*width-200, 40);
  }
}