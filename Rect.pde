class Rect {
  int x = 30;
  int y = 30;
  int whatis = 0;
  float h = 60;
  float w = 60;
  float add;
  float fill = 255;
  float size = 20;
  
  Rect(int number,int row){
    whatis = number;
    y += (row * 81);
    number = number % 4;
    x += (number * 81);
  }
  void spawn(){
    if(whatis == 0){
      fill(255,255,255);
      size = 25;
      rect(x,y,83,83);
    }
    else{
    //fill = whatis * whatis + 140;
    //size = 20;
    image(Bild[whatis],x,y);
    }
    //fill(fill/8,fill/5,fill/2);
    
    
  }
}
