String zin;

void setup(){
 zin = LangeZin("Hallo", " goedendag", " Fijne dag", " Later");
 println(zin);
}

void draw(){
  
}

String LangeZin(String a, String b, String c, String d){
  String antwoord;
  antwoord = a +""+ b +""+ c+""+ d;
  return antwoord;
}
