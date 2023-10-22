class SteenPapierSchaar {
    public static void main(String[] args) {
        Scanner console = new Scanner(System.in);
        Random generator = new Random();
int gebruikersKeuze, computersKeuze;

do{
  println("1: Rock\n2: Paper\n3: Scissors|n-1 te stoppen:");
  gebruikersKeuze = console.nextInt();
  computersKeuze = generator.nextInt(3) + 1;
}
 
   if(gebruikersKeuze == Steen){
    if(computersKeuze == Steen){
      println("Steen vs Steen: gelijkspel");
    }
    else if(computersKeuze == Papier){
      System.out.println("Steen vs Papier: je hebt verloren");
    }
    else if(computersKeuze == Schaar){
      println("Steen vs Schaar: je hebt gewonnen");
  } 
 if (gebruikersKeuze == Papier){
    if(computersKeuze == Steen){
      System.out.println("Papier vs Steen: je hebt gewonnen");
    }
    else if(computersKeuze == Papier){
      println("Papier vs Papier: gelijkspel!");
    }
    else if(computersKeuze == Schaar){
      println("Papier vs Schaar: je hebt verloren");
    }
 }
  if (gebruikersKeuze == Schaar){
    if(computersKeuze == Steen){
      println("Schaar vs Steen: je hebt verloren");
    }
    else if(computersKeuze == Papier){
      println("Schaar vs Papier:je hebt gewonnen");
    }
    else if(computersKeuze == Schaar){
      println("Schaar vs Schaar: gelijkspel!");

import controlP5.*;

ControlP5 cp;
Button knop1, knop2, knop3;
int gebruikersKeuze = 1;
int computersKeuze = 2;

void setup() {
  size(800, 800);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("steen");
  knop2 = cp.addButton("papier");
  knop3 = cp.addButton("schaar");
  
  knop1.setCaptionLabel("Steen");
  knop2.setCaptionLabel("Papier");
  knop3.setCaptionLabel("Schaar");
  
  knop1.setPosition(50, 50);
  knop2.setPosition(200, 50);
  knop3.setPosition(350, 50);
}

void draw() {
  if (gebruikersKeuze != -1) {
    String result = getResult(gebruikersKeuze, computersKeuze);
    textSize(24);
    text(result, width / 2, height / 2);
  }
}


String getResult(int user, int computer) {
  if (user == computer) {
    return "Gelijkspel!";
  } else if ((user == 0 && computer == 2) || (user == 1 && computer == 0) || (user == 2 && computer == 1)) {
    return "Je hebt gewonnen!";
  } else {
    return "De Computer heeft gewonnen!";
  }
}

void steen() {
  gebruikersKeuze = 0; // Steen
  computersKeuze = int(random(3));
}

void papier() {
  gebruikersKeuze = 1; // Papier
  computersKeuze = int(random(3));
}

void schaar() {
  gebruikersKeuze = 2; // Schaar
  computersKeuze = int(random(3));
}
