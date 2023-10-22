float letterX = 100;
float letterY = 100;
float snelheid = 50;

void setup(){
  size(900,900);
  background (0);
  fill(0);

}

void draw(){
  int deltaTime = getDeltaTime();
  letterY = letterY + (((float)deltaTime / 1000) * (float)snelheid);

}

void   keyPressed(){
 key == 
 
}
