int letterX =100;
int letterY =100;
int snelheid =100; //PixelPerSeconde
int getDeltaTime =100;
void setup(){
  size(400,400);
  background(200);
  textSize(100);
  fill(0);
  
}

void draw(){
  int deltaTime = println(getDeltaTime());
  background(200);
  letterY++;
  text("P",letterX,letterY);
  
  if(letterRaaktBodem()){
    letterY=0;
  }
}

boolean letterRaaktBodem(){
  if(letterY == height) {
    println("bodem");
    return true;
    
}

return false;
}

int getDeltaTime(){
  int delta = millis();
}
