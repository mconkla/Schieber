AllRect therects;
int number = 16;
PImage img;
int singletilex;
int singletiley;
int row;
int column;
int tiles = 4;
int gap=5;
boolean buttonover = false;
int newscalex;
PImage[] Bild = new PImage[tiles*tiles];
Shuffle shuffle;

//---------------------------------------------------------
void settings(){
  //Load Image named "test1.jpg"
  //img = loadImage("test1.jpg");
  //img = loadImage("test2.jpg");
  img = loadImage("test3.jpg");
   size(500,400);
}
//--------------------------------------------------
void setup(){
 therects = new AllRect(number);
 shuffle = new Shuffle();
 colorMode(HSB,255);
 

}
//--------------------------------------------------
void draw(){
  
  
  //background(0);
  background(20,50,80);
  shuffle.show();
  update(mouseX,mouseY);
  therects.show();
  
  //image(img,0,0,singletilex,singletiley);
  
 
  
  //display Single tiles
  
}
//--------------------------------------------------

void keyPressed() {
  if (key == CODED) {
      if (keyCode == UP) {
        if(abs(therects.x - therects.selectorsx) % 4 == 0){
          therects.SelectorsUp();
        }   
      }
      if (keyCode == DOWN) {
        if(abs(therects.x - therects.selectorsx) % 4 == 0){
        therects.SelectorsDown();
        }
      }
      if (keyCode == RIGHT) {
        if(abs(therects.x - therects.selectorsx) <= 3 ){
         therects.SelectorsLeft(); 
        }      
      }
      if (keyCode == LEFT) {
        therects.sdown = false;
        therects.sleft = false;
        therects.sup = false;
        therects.sright = false;
        if(abs(therects.x - therects.selectorsx) <= 3 ){
       therects.SelectorsRight();
        }
      }
      
      if (keyCode == SHIFT) { 
        if(therects.sleft){
           while(therects.x<therects.selectorsx){
           therects.Links1();
           }
           therects.sleft = false;
         }
      else if(therects.sright){
         while(therects.x > therects.selectorsx){
         therects.Rechts1();
         }
         therects.sright = false;
       }
      else if(therects.sup){
         while(therects.x != therects.selectorsx){
         therects.Up1();
         }
         therects.sup = false;
       }
      else if(therects.sdown){
         while(therects.x != therects.selectorsx){
         therects.Down1();
         }
         therects.sdown = false;
       }
       
      }
  }
}
//*/
//------------------------------------------
void update(int x, int y) {
  if (x >= shuffle.x && y >= shuffle.y && x <= shuffle.x + 30 && y <= shuffle.y + 70 ) {
    buttonover = true;
  } 
  else{
    buttonover = false;
  }
}
//-------------------------------------
void mousePressed() {
  if (buttonover) {
    randomize();
  }
}
//---------------------------------------
void randomize()
{
       print("Hallo");
       int zaehler = 0;
       while(zaehler < 200){
       int a = 0;
       a = (int) (Math.random() * 10);
       
       switch (a) {
           case 1:  therects.Links1();
           therects.SelectorsLeft();

           
                    break;
           case 2:  therects.Rechts1();
           therects.SelectorsRight();

                    break;
           case 3:  therects.Up1();
           therects.SelectorsUp();

                    break;
           case 4:  therects.Down1();
           therects.SelectorsDown();

                    break;
           default: 
                  break;
          
           
       }
       
       zaehler ++;
       }
      

}
