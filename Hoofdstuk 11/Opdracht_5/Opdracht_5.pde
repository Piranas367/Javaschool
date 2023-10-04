String[] variabeleNaam = {"joe bidon", "jamal", "jeff", "nakamura", "sven", "moussa", "Donald trump"};
boolean gevonden = false;

void setup() {
  for (int i = 0; i < variabeleNaam.length; i++) {
    if (variabeleNaam[i].equals("jan")) { // Vergelijk met "jan" in plaats van Jan
      gevonden = true;
      break; // Stop de lus zodra de naam is gevonden
    }
  }
  
  println(gevonden);
}
