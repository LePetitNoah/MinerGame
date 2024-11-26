class Ressource{
 String nom;
 int quantite;
 int valeur;
 color couleur;
 
 Ressource(String n, int q, int v, color c){
   nom = n;
   quantite = q;
   valeur = v;
   couleur = c;
 }
 
 String getNom(){
   return nom;
 }
 
 int getQuantite(){
   return quantite;
 }
 
 int getValeur(){
   return valeur;
 }
 
 color getCouleur(){
   return couleur;
 }
}

class Coal extends Ressource{
 Coal(){
   super("Charbon", 0, 10, color(6, 6, 7));
 }
}

class Silver extends Ressource{
 Silver(){
   super("Argent", 0, 100, color(192, 192, 192));
 }
}

class Bronze extends Ressource{
 Bronze(){
   super("Bronze", 0, 150, color(205, 127, 50));
 }
}

class Iron extends Ressource{
 Iron(){
   super("Fer", 0, 250, color(161, 157, 148));
 }
}

class Gold extends Ressource{
 Gold(){
   super("Or", 0, 1000, color(187, 165, 61));
 }
}

class Ruby extends Ressource{
 Ruby(){
   super("Ruby", 0, 4000, color(224, 17, 95));
 }
}

class Emerald extends Ressource{
 Emerald(){
   super("Emeraude", 0, 7000, color(80, 200, 120));
 }
}

class Diamond extends Ressource{
 Diamond(){
   super("Diamond", 0, 10000, color(185, 242, 255));
 }
}
