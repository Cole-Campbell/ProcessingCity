import ddf.minim.*;

public class Mic {
  Minim minim;
  AudioInput in;
  
  public Mic() {
    minim = new Minim(this);
    in = minim.getLineIn();
  }

 
}