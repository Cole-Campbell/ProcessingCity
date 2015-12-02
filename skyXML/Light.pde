import lmu.*;
public int cd;
class buildingLight {

  float multi;
  int left;
  int r = 255;
  int g = 250;
  int b = 85;
  buildingLight() {


    // initial sensor values
    int[] lmu_start = LmuTracker.getLMUArray();
    left  = lmu_start[0];
    multi = 255.0 / (left);
  }

  void paint() {
    // get current sensor values
    int[] vals = LmuTracker.getLMUArray();
    int li = (int)(vals[0] * multi)%254;

    // left sensor

    if (li == 1) {
      li=255;
    }

    if (li<=255&&li>=200) {
      cd=0;
    } else if (li<=199&&li>=150) {
      cd=50;
    } else if (li<=149&&li>=100) {
      cd=120;
    } else if (li<=99&&li>=50) {
      cd=150;
    } else if (li<=49&&li>=00) {
      cd=170;
    }
    fill((hour()*10)-li,(minute()*4)-li,(second()*4)-li);
    rect (635, 405, 10, 250);

    fill(250-li, 244-li, 162-li);


    rect (0, 540, 140, 250);
    rect (140, 620, 105, 180);
    rect (250, 510, 130, 270);
    rect (380, 570, 117, 230);
    rect (500, 650, 800, 150);
    rect (790, 565, 500, 150);
    rect (940, 492, 150, 80);
    rect (1050, 539, 150, 80);



    noStroke();
    tint(hour()*10,minute()*4,second()*4);
    image(tower, 0, 0);
    tint(255,0+li);
    image(tower, 0, 0);
    
    noTint();
    image(buildings, 0, 0);
  }
}