class AllRect{
  
  ArrayList<Rect> rectan;
  int row = 0;
  int selectorsx = 0;
  int x=0;
  float mix = 30;
  float miy = 30;
  int [] selector;
  boolean sleft,sright,sup,sdown;
  int rr = 0;
  int scale = 320;
 
  
  //--------------------------------------------------
  AllRect(int number){
    
    image(img,0,0,scale,scale);
    
    for(int i = 0 ; i < 16; i++){
      if(i % 4 == 0 && i != 0){
        rr += 1;
      }
      Bild[i] = get(scale/4 * (i%4) ,scale/4 * rr,80,80);
      
    }
    
   
   
   
    rectan = new ArrayList();
    selector = new int[16];
    for (int i=0; i<number; i++){
      if(i % 4 == 0 && i != 0){
        row++;
      }
      rectan.add (new Rect (i,row));
      selector[i] = i;
    }
  }
  //--------------------------------------------------
  void show(){
    fill(255);
    rect(mix,miy,82,82);
    for (int i=0; i<number; rectan.get(i++).spawn());
    
     
  }
  //--------------------------------------------------
  
  void Links1(){
       //1 Block

         
      if(x+1 < rectan.size()){
        if((x+1) % 4 == 0){
        }
        else{
          rectan.get(x).whatis =  rectan.get(x+1).whatis;
        rectan.get(x+1).whatis = 0;
         x = update();
        }
      }
       }
 //--------------------------------------------------      
  
void Rechts1(){
       //1 Block
       if(x % 4 ==0){
       }
       else{
      rectan.get(x).whatis = rectan.get(x-1).whatis;
         rectan.get(x-1).whatis = 0;
         x = update();
       }
      }
 //--------------------------------------------------
  void Up1(){
       //1 Block
      if(x - 4 < 0){
      }
      else{
       rectan.get(x).whatis = rectan.get(x-4).whatis;
       rectan.get(x-4).whatis = 0;
       x = update();
      }
  }
//--------------------------------------------------
void Down1(){
       //1 Block
      if(x >= 12){
        return;
      }
      else{
       rectan.get(x).whatis = rectan.get(x+4).whatis;
       rectan.get(x+4).whatis = 0;
       x = update();
      }
  }
  //--------------------------------------------------
  
  void SelectorsDown(){
       //1 Block
      if(selectorsx >= 12){
      }
      else{
       selector[selectorsx] = selector[selectorsx +4];
       selector[selectorsx +4] = 0;
       selectorsx = selectorsupdate();
       print(selectorsx);
       mix = rectan.get(selectorsx).x;
       miy = rectan.get(selectorsx).y;
      }
      if(selectorsx > x){
      sdown = true;
      }
  }
 //--------------------------------------------------
    void SelectorsUp(){
       //1 Block
      if(selectorsx - 4 < 0){
      }
      else{
       selector[selectorsx] = selector[selectorsx -4];
       selector[selectorsx -4] = 0;
       selectorsx = selectorsupdate();
       print(selectorsx);
       mix = rectan.get(selectorsx).x;
         miy = rectan.get(selectorsx).y;
      }
       if(selectorsx < x){
      sup  = true;
      }
      
  }
 //--------------------------------------------------
  void SelectorsLeft(){
     if(selectorsx+1 < selector.length){
        if((selectorsx+1) % 4 == 0){
        }
        else{
          selector[selectorsx] =  selector[selectorsx+1];
          selector[selectorsx + 1] = 0;
         selectorsx = selectorsupdate();
         print(selectorsx);
         mix = rectan.get(selectorsx).x;
         miy = rectan.get(selectorsx).y;
         
        }
      }
       if(selectorsx > x){
      sleft = true;
      }
  }
//--------------------------------------------------
  void SelectorsRight(){
        if(selectorsx % 4 ==0){
       }
        else{
          selector[selectorsx] =  selector[selectorsx-1];
          selector[selectorsx -1] = 0;
         selectorsx = selectorsupdate();
         print(selectorsx);
         mix = rectan.get(selectorsx).x;
         miy = rectan.get(selectorsx).y;
         
        }
       if(selectorsx < x){
      sright = true;
      }
      }   
//-------------------------------------------------- 
//--------------------------------------------------
//--------------------------------------------------
  int update(){
     for(int i = 0; i < rectan.size();i++){
        if(rectan.get(i).whatis == 0){
          x = i;
        }
         }
     return x;
  }
 //--------------------------------------------------
 //--------------------------------------------------
 //--------------------------------------------------
    int selectorsupdate(){
   
     for(int i = 0; i < selector.length;i++){
        if(selector[i] == 0){
          selectorsx = i;
        }
         }
     return selectorsx;
  }
  }
