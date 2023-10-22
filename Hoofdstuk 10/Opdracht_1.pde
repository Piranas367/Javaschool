import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;



void setup(){
  size(800,800);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("knop1");
  knop2 = cp.addButton("knop2");
  
  knop1.setCaptionLabel("Klik mij");
  knop2.setCaptionLabel("Klik mij");
  
  


}


void draw(){
  
} 
void knop1(){ 
  println("Goed gedaan!"); 
}
Textfield Tekstveld1;

void knop2(){ 
  println("Helaas fout"); 
}
Textfield Tekstveld2;


 
  
