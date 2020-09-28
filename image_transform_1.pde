
int longueur;
int largeur;
PImage imgDb;
PImage img;
color couleur;

void setup() {
  size(600, 600);
  img=loadImage("pap600.jpg");
}      


void draw() {
  
  noLoop();
  imgDb=createImage(img.width, img.height, RGB);
 // image(img,0,0);
  for(int i=0;i<img.width;i++){
    for(int j=0;j<img.height;j++){
      couleur=img.pixels[j*img.width + i];
      
      int grey=round(red(couleur)*0.222+green(couleur)*0.707+blue(couleur)*0.071);
      
      //Passage en noir & blanc
      imgDb.set(i,j,color(grey));
      
      //Symétrie par rapport axe vertical
      //imgDb.set(600-i,j,couleur);
      
     //Symétrie par rapport axe horizontal
      //imgDb.set(i,600-j,couleur);
    }
    
  }
  
image(imgDb,0,0);
image(img,0,0,100,100);

//image(img,0,0);
}
