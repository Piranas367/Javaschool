import controlP5.*;
int[] basisInts;
int score ;
int score2;
int menu;
int winScore = 10;
boolean spelgeëindigd;
boolean beginSpel = false;
boolean eindSpel = false;
boolean gameStarted = false;
boolean gameEnded = false;

class Button {

}

class Ball {
  float[]floatGetallen;
  float x;
  float y;
  float speedX;
  float speedY;
  float diameter;
  color c;
  float left2;
  float right2;
  float balSnelheidX;
  float balSnelheidY;

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
  float [] floatPaddle;
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
Button StartButton = new Button();


  ControlP5 cp;
  ControlP5 cp2;
  

void setup() {
  size(800, 600);
  cp = new ControlP5(this);
  cp2 = new ControlP5(this);
  cp.addButton("BeginSpel")
    .setPosition(CENTER - -200, CENTER - -270)
    .setSize(400, 100);
    textSize(32);
  cp2.addButton("SpeelOpnieuw")
          .setPosition(CENTER - -200, CENTER - -270)
          .setSize(400, 100);
  cp2.getController("SpeelOpnieuw").hide();
  
    
  
  
  
  myBall = new Ball(400, 300, 20);
  paddleLeft = new Paddle(15, height / 2, 20, 100);
  paddleRight = new Paddle(width - 15, height / 2, 20, 100);

  myBall.speedX = 7;
  myBall.speedY = random(-3, 3);
  myBall.left2 = width / 2;
  myBall.right2 = height / 2;
}

void draw() {
  if (!gameStarted) {
    
    background(0);
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Pong the Game!", width / 2, height / 5);
    
   
  } else {
    

    background(0);
    fill(100);

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

    if (mouseX > width / 2 - 100 && mouseX < width / 2 + 100 &&
        mouseY > height / 2 - 50 && mouseY < height / 2 + 50) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }

    if (score >= 10) {
      cp2.getController("SpeelOpnieuw").show();
        background(0);
    fill(255);      
    }
    if (score2 >= 10) {
      cp2.getController("SpeelOpnieuw").show();
      background(0);
   
          
    }

    if (mouseX > width / 2 - 100 && mouseX < width / 2 + 100 &&
        mouseY > height / 2 - 50 && mouseY < height / 2 + 50) {
      cursor(HAND);
    } else {
      cursor(ARROW);
    }

    myBall.move();
    myBall.display();
    paddleLeft.move();
    paddleLeft.display();
    paddleRight.move();
    paddleRight.display();

    textSize(25);
    text("Score   = " + score, width / 2.3, 20);
    text("Score  = " + score2, width / 2.3, height - 18);
  }
}




void keyPressed() {
  if (keyCode == UP) {
    paddleRight.speedY=-3;
  }
  if (keyCode == DOWN) {
    paddleRight.speedY=3;
  }
  if (key == 'w') {
    paddleLeft.speedY=-3;
  }
  if (key == 's') {
    paddleLeft.speedY=3;
  }
}


void keyReleased() {
  if (keyCode == UP) {
    paddleRight.speedY=0;
  }
  if (keyCode == DOWN) {
    paddleRight.speedY=0;
  }
  if (key == 'w') {
    paddleLeft.speedY=0;
  }
  if (key == 's') {
    paddleLeft.speedY=0;
  }
}

void BeginSpel() {
  
  gameStarted = true;
  cp.remove("BeginSpel");
}
void SpeelOpnieuw() {
   score = 0;
   score2 = 0;
  cp2.getController("SpeelOpnieuw").hide();
 
}

//for(int i = 0; i<10; i++){
//} 
