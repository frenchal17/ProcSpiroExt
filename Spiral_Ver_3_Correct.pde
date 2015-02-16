void setup(){
   size(600,600);
   background(360,360,360);
}

//Actual Spiral Program

   float x = 0;
   float y = 0;
   float z = 5;
   float c = .017;
   float c2 = .001;
   //Again, for different results, just mess with c and c2
   float r = 0;

void draw(){
     x = x + c;
     y = y + c;
     r = r + c2;
     ellipse(300 + 200 * cos(x),
     300 + 200 * sin(y), 20 * sin(2 * x), 20 * sin(2 * x));
     ellipse(300 + 180 * sin(x), 300 + 180 * cos(x), 5, 5);
     ellipse(300 + (180 - 180 * sin(r)) * cos(x),
             300 + (180 - 180 * sin(r)) * sin(y), 5, 5);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}
