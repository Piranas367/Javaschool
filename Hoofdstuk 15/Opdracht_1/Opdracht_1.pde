import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

Textfield Tekstveld1;

void setup(){
  size(800,800);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("knop1");
  knop2 = cp.addButton("knop2");
  
  knop1.setCaptionLabel("Klik mij");
  knop2.setCaptionLabel("Klik mij");
  Tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setText("Goed gedaan!")
                .setCaptionLabel("Type iets!")
                .setColorLabel(color(255,0,0));
}


void draw(){
  
} 
void knop1(){ 
  println("Goed gedaan!: " + Tekstveld1.gettext());
}
  
