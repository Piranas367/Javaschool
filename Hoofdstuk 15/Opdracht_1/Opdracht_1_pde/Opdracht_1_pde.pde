class  Rectangle {
  float x;
  float y;
  float z;
  
  Rectangle(float x, float y, float z) {
  this.x = x;
  this.y = y;
  this.z = z;
  }
  
  
  
  void display(){
    rect(x,y,z,z);
  }
}

void setup(){
  size(400,400);
  Rectangle myRectangle = new Rectangle(200,200,50);
  
  myRectangle.display();
}



  
