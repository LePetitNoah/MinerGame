// Projet Personnel //<>//

// Jeux de Minage :

// 1ere phase : Le joueur doit faire une ou plusieurs actions pour récolter et générer de l'argent activement (clicker, missions, etc ...)

// 2eme phase : Le joueur peut acheter des mineurs qui génèrent de l'argent de façon passive

// 3eme phase : Le joueur peut débloquer de nouvelles mines, de nouvelles ressources et une fonctionnalité mini-jeux

// 4eme phase : Le but final du jeu est d'obtenir des accomplissements, avoir le plus d'argent / ressource possible et de prendre du plaisir !!

float largeur; // Largeur de la fenêtre
float hauteur; // Hauteur de la fenêtre

GraphicalComponent gc; // Déclaration d'un composant graphique

void setup() {
  size(500, 500); // Définition de la taille de l'écran
  largeur = width; // On défini la largeur de l'écran
  hauteur = height; // On défini la hauteur de l'écran
  surface.setTitle("Miner"); // On défini le titre de la fenêtre
  surface.setResizable(true); // On autorise le redimensionnement de la fenêtre
  
  // Chargement de la police d'écriture (optimisation du lancement)
  PFont mono;
  mono = createFont("arial", 12);
  textFont(mono);

  init(); // Appel de la fonction init
  
  gc = new GraphicalComponent("test", 100, 100, 100, 20); // Initialisation du composant graphique
  gc.affiche(); // Affichage de l'élément graphique
  
}

void draw() {
  if(gc.isPressed()){ // On vérifie si la souri appuie sur le composant graphique
   println(gc.getNom()); // Si oui, on écrit le nom du composant graphique
   delay(1000); // Et on met un delay de 1 seconde pour ne pas rentrer 60fois/sec dans le if  
  }
}

void init() { // Initialisation pour test
  Ressource[] tab = new Ressource[8]; // On déclare un tab de Ressource de taille 8
  
  // On déclare une instance de chaque ressource
  Coal c = new Coal();
  Silver s = new Silver();
  Bronze b = new Bronze();
  Iron i = new Iron();
  Gold g = new Gold();
  Ruby r = new Ruby();
  Emerald e = new Emerald();
  Diamond d = new Diamond();
  
  // On affecte une ressource à une case du tableau
  tab[0] = c;
  tab[1] = s;
  tab[2] = b;
  tab[3] = i;
  tab[4] = g;
  tab[5] = r;
  tab[6] = e;
  tab[7] = d;

  // On parcourt le tableau de ressource, pour chacune d'entre elles on affiche un carré de la couleur de la ressource où on écrit le nom, la quantité et la valeur de la ressource
  for (int j=0; j<tab.length; j++) {
    fill(tab[j].getCouleur()); // Met la couleur de remplissage à la couleur de la ressource
    rect(j*(largeur/8), 0, largeur/8, hauteur/8); // Construit un rectangle avec la couleur de remplissage
    if (j==0) {
      fill(255);
    } else {
      fill(0);
    }
    text(tab[j].getNom(), j*(largeur/8)+3, 15); // Ecrit le nom de la ressource
    text(tab[j].getQuantite(), j*(largeur/8)+3, 35); // Ecrit la quantite de la ressource
    text(tab[j].getValeur(), j*(largeur/8)+3, 55); // Ecrit la valeur de la ressource
  }
}
