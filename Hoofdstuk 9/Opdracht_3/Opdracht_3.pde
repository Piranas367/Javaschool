int mijnGetal;

void setup(){
  println(mijnFunctie(10,20));
  mijnGetal = mijnFunctie (15,45);
  println(mijnGetal);
}

void draw(){
  
}

int mijnFunctie(int getal1, int getal2){
  int totaal = getal1 + getal2;
  totaal = (getal1 + getal2)/2;
  return totaal;
}
  
