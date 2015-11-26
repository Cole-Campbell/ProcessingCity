//Start of Circ Class. Declaring all of my variables.
class Cloud {
  float x;
  float y;
  float rad;
  float dist;

  //Two Dimensional Array, so all variable information for each circle can be stored within
  //one array instead of multiple.
  float[][] cr = new float[20][6];

  Cloud() {
    //Initializing all variable within a For loop so no more than 20 values are created
    //Random values are created and stored so circles are all randomly generated
    //While also assigning them to their specific array location 
    for (int i = 0; i<20; i++) {
      x = random(-200, width);
      y = random(0, 200);
      rad = random(10, 50); 

      cr[i][0]=x;
      cr[i][1]=y;
      cr[i][2]=rad;
    }
  }
  //Generates and "Paints" the circles using the randomly generated variables stored within the array
  //And calls upon them as the For loop cycles through all 20 rows, grabbing the appropriate stored variable value
  void paint(int xPos, int yPos) {
    translate (xPos, yPos);
    for (int c=0; c<20; c++) {
      printArray(cr[c][2]);

      fill(255-cd);
      for (int i=0; i<=10; i++) {
        ellipse(cr[c][0]+i*10, cr[c][1], cr[c][2], cr[c][2]);
      }
      if (cr[c][0]==cr[c][0]) {
          cr[c][0]=cr[c][0]+1+wind.in.left.level();          
        }
      if (cr[c][0]==700) {
            cr[c][0] = -200;
          }
    }
  }
}