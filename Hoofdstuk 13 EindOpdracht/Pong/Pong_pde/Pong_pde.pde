int score;
int score2;
int menu;
boolean beginSpel = false;

class Ball {
  float x;
  float y;
  float speedX;
  float speedY;
  float diameter;
  color c;
  float left;
  float right;
  float balSnelheidX;
  float balSnelheidy;

  Ball(float balX, float balY, float balDiameter) {
    x = balX;
    y = balY;
    diameter = balDiameter;
    speedX = 0;
    speedY = 0;
    c = color(255);
  }

  void move() {
    y = y + speedY;
    x = x + speedX;
  }

  void display() {
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  float left() {
    return x - diameter / 2;
  }

  float right() {
    return x + diameter / 2;
  }

  float top() {
    return y - diameter / 2;
  }

  float bottom() {
    return y + diameter / 2;
  }
}

class Paddle {
  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;
  color c;

  Paddle(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
    c = color(255);
  }
void move() {
    y += speedY;
    x += speedX;
  }

  void display() {
    fill(c);
    rect(x - w / 2, y - h / 2, w, h);
  }

  float left() {
    return x - w / 2;
  }

  float right() {
    return x + w / 2;
  }

  float top() {
    return y - h / 2;
  }

  float bottom() {
    return y + h / 2;
  }
}

  Ball myBall;
  Paddle paddleLeft;
  Paddle paddleRight;
  Knop StartKnop;


void setup() {
  size(800, 600);
  
  StartKnop = new Knop  (250,350,100,50,"Spel Starten", 0,200,200); 
  
  myBall = new Ball(400, 300, 20);
  paddleLeft = new Paddle(15, height / 2, 20, 100);
  paddleRight = new Paddle(width - 15, height / 2, 20, 100); 

  myBall.speedX = 5;
  myBall.speedY = random(-3, 3);
  myBall.left = width/2;
  myBall.right = height/2;
  
   
   
}

void draw() {
  background(0);
  switch(menu){
    case 0:
    
    
      fill (0);
      textSize(30);
      textAlign(CENTER,CENTER);
      text("Pong the game", width/2, height/2);
      StartKnop.update();
      StartKnop.render();
      if (StartKnop.isClicked())
      if (mouseX > 250 && mouseX < 250 + 100 && mouseY > 350 && mouseY < 350 + 50 && mousePressed) {
      startGame = true;
      {
        menu = 1;
      }
    
    break;
  }
    
      
  
  
 
 
 
 
 
 
  myBall.move();
  myBall.display();


  paddleLeft.move();
  paddleLeft.display();
  paddleRight.move();
  paddleRight.display();


  if (myBall.left() < paddleLeft.right() && myBall.y > paddleLeft.top() && myBall.y < paddleLeft.bottom()) {
    myBall.speedX = -myBall.speedX;
  }

  if (myBall.right() > paddleRight.left() && myBall.y > paddleRight.top() && myBall.y < paddleRight.bottom()) {
    myBall.speedX = -myBall.speedX;
  }

  if (myBall.left() < 0) {
    myBall.speedX = abs(myBall.speedX);
    score2++;
    myBall.x = width / 2;
    myBall.y = height / 2;
    
  }

  if (myBall.right() > width) {
    myBall.speedX = -abs(myBall.speedX); 
    score++;
    myBall.x = width / 2;
    myBall.y = height / 2;
  }

  if (myBall.top() < 0 || myBall.bottom() > height) {
    myBall.speedY = -myBall.speedY;
    }
   textSize(25);
 text("Score   = " + score, width / 2.3, 20);
  text("Score  = " + score2, width / 2.3, height- 18);
  
  maakWinaar();

}

boolean BalRaaktZijkant (){
 if (myBall.left == 0 || myBall.left == width) {
    myBall.left = width/15;
    myBall.right = height/15;
    myBall.speedX = 5;
    myBall.speedY = random(-3, 3);
   println("Raakt zijkant");
   return true;
 }
 
 return false;
}



void keyPressed(){
  if(keyCode == UP){
    paddleRight.speedY=-3;
  }
  if(keyCode == DOWN){
    paddleRight.speedY=3;
  }
  if(key == 'w'){
    paddleLeft.speedY=-3;
  }
  if(key == 's'){
    paddleLeft.speedY=3;
  }
}


void keyReleased(){
  if(keyCode == UP){
    paddleRight.speedY=0;
  }
  if(keyCode == DOWN){
    paddleRight.speedY=0;
  }
  if(key == 'w'){
    paddleLeft.speedY=0;
  }
  if(key == 's'){
    paddleLeft.speedY=0;
  }
}

void maakWinaar() {
  fill(255);
  if(score >= 10) {
    text("Winnaar", width/2, height/2);
  } else if (score2 >= 10) {
    text("Winnaar", width/2, height/2);
  }
}

void eindeGame(){
  fill(255);
} 
