class Person {
  String naam;
  int leeftijd;
  String geslacht;
  
  
  public Person(String naam, int leeftijd, String geslacht){
    this.naam = naam;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }
  
  
  public void toonInformatie(){
  println("naam: " + naam);
  println("leeftijd: " + leeftijd);
  println("geslacht: " + geslacht);
  }
}

  void setup(){
    Person myPerson = new Person( "Pieter Post", 69," wallmart bag");
    myPerson.toonInformatie();
  }
