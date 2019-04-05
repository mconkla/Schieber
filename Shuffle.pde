class Shuffle{
  float x = width- 50;
  float y = height/2 - 50;
  Shuffle(){
    
  }
 void show(){
   
   fill(210);
   rect(x,y,30,70);
  textSize(15);          //Score anzeige
  //textAlign(RIGHT, BOTTOM);
  text("Random",x - 15, y-10);
  
   
   
 }
  
}
