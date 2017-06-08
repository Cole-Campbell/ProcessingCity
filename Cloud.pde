//Start of Cloud Class. Declaring all variables. 

class Cloud {
  float x;
  float y;
  float rad;
  float dist;

  //Two Dimensional Array, so all variable information for each cloud can be stored within
  //one array instead of multiple.
  float[][] cr = new float[50][6];

  Cloud() {
    //Initializing all variable within a For loop so no more than 50 values are created
    //Random values are created and stored so clouds are all randomly generated
    //While also assigning them to their specific array location

    for (int i = 0; i<50; i++) {
      
      x = random(-200, width);
      y = random(0, 350);
      rad = random(10, 100); 
      dist = random(5, 15);
      cr[i][0]=x;
      cr[i][1]=y;
      cr[i][2]=rad;
      
    }
  }
  
  //Generates and "Paints" the clouds using the randomly generated variables stored within the array
  //And calls upon them as the For loop cycles through all 50 rows, grabbing the appropriate stored variable value
  //Making sure, with the cloudPop variable that only a certain number of clouds are on the screen at once, depending as to the condition
  void paint(int xPos, int yPos) {
    translate (xPos, yPos);

    //For loop, using the distance variable so clouds vary in length.
    for (int c=0; c<dist; c++) {

      //Colour of clouds, using the light sensor variable to adjust depending on the amount
      fill(255-cd);

      //cloudPop variable making sure only X amount of clouds are out at once. CloudPop you would remove and insert a number
      //if you wanted a certain amount of clouds
      for (int i=0; i<=cloudPop; i++) {

        ellipse(cr[c][0]+i*dist, cr[c][1], cr[c][2], cr[c][2]);

        //If statement so if the clouds go off the canvas, that they are thrown back to the righthand side and are given new variable amounts
        if (cr[c][0]>=1250) {

          cr[c][0]=random(-500, -200);
          cr[c][1]=random(0, 350);
          cr[c][2]=random(10, 100);
        }
      }

      //Moved the clouds. Running the statement to check if a cloud is in the same spot as last time, and if so to move
      //by the windBlow variable, determined by the localWeather XML and by the microphone input.
      if (cr[c][0]==cr[c][0]) {

        cr[c][0]=cr[c][0]+windBlow+wind.in.left.level()*2;
      }
    }
  }
}