class GraphicalComponent { // Création de la classe GraphicalComponent
  String name; // Nom du composant
  float posX; // Position X du composant
  float posY; // Position Y du composant
  float largeur; // Largeur du composant
  float hauteur; // Hauteur du composant

  GraphicalComponent(String n, float x, float y, float l, float h) { // Constructeur de la classe GraphicalComponent
    name = n;
    posX = x;
    posY = y;
    largeur = l;
    hauteur = h;
  }

  boolean isPressed() { // Renvoie true si le composant est clicker, false sinon
    if (mousePressed) {
      int mX = mouseX;
      int mY = mouseY;
      if (mX >= posX && mX <= posX+largeur) {
        if (mY >= posY && mY <= posY+hauteur) {
          return true;
        }
      }
    }
    return false;
  }
  
  // Méthode Virtuelle

  void affiche() { // Permet l'affichage du composant
    fill(0);
    rect(posX, posY, largeur, hauteur);
  }
  
  String getNom(){
   return name; 
  }
  
  float getPosX(){
    return posX;
  }
  
  float getPosY(){
    return posY;
  }
  
  float getLargeur(){
    return largeur;
  }
  
  float getHauteur(){
    return hauteur;
  }
}
