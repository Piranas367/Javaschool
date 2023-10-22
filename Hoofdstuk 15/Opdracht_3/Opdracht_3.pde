public class Bankaccount{
  int rekeningnummer;
  int saldo;
  String eigenaar;
  
   public Bankaccount(int rekeningnummer, String eigenaar, int saldo){
      this.rekeningnummer = rekeningnummer;
      this.eigenaar = eigenaar;
      this.saldo = saldo;
   }
  
  
  void geldStorten(int bedrag){
    saldo += bedrag;
    println("je nieuwe saldo " +saldo);
  }
    
  void geldOpnemen(int bedrag){
      saldo -= bedrag;
      println("je nieuwe saldo " + saldo);
      for(int i = 200; i > 0; i-=5){
  println(i);
}


    }
  }

void setup(){
    Bankaccount mijnAccount = new Bankaccount(1, "Pieter Post", 200);
    mijnAccount.geldStorten(71298);
}

  



    


    
