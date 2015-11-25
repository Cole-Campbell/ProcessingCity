import ddf.minim.*;


Minim minim;
AudioInput in;

void setup ()
{
  size(1024, 200, P3D);
  minim = new Minim(this);
  in = minim.getLineIn();
}

void draw()
{
  background(0);
  stroke(255);

  noStroke();
  fill (255, 128);

  rect(0, 0, in.left.level()*width, 100);
  rect(0, 100, in.right.level()*width, 100);

  println(in.left.level()*width);
}