void setup(){
  size(500,500);
}

void draw(){
 background(255,255,255);
 int sizeA = 100;
 for(int i = 0; i < 5; i++){
   
  ellipse(200 - sizeA/2,200,sizeA,sizeA);
  sizeA -= 20;
 }
}

void drwaRightC(int sizeA){
  for(int i = 0; i < 5; i++){
    ellipse(200 - sizeA/2,200,sizeA,sizeA);
    sizeA -= 20;
  }  
}
