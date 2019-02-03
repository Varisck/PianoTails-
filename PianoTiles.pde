ArrayList<Tile> Tiles;
int velocity;
int timing;
boolean canSpawn;
Score Punteggio;

void setup(){
  Tiles = new ArrayList<Tile>();
  Punteggio = new Score();
  addTile();
  velocity = 3;
  size(400, 900);
}

void draw(){
  background(124,120,255);
  drawTails();
  remove();
  if(canSpawn){
    timing ++;          //aumenta il contatore ogni volta che spawna una casella
    addTile();
  }
  if(timing > 5){       //ogni sei spawn aumenta la velocita del movimento delle caselle
    timing = 0;
    velocity +=1;
  }
  ceckForLose();
  Punteggio.show();
}

//disegna le tails dell'array
void drawTails(){
  canSpawn = true;
  for(Tile t : Tiles){
    t.show();
    t.move(velocity);
    if(t.y < -50){            //se anche solo una casella non è ancora visibile imposta il canSpawn a false
      canSpawn = false;
    }
  }
}

void gameLost(int x){
  fill(255, 0, 0);
  rect(x, 0, width  / 4, height);
  noLoop();
}

void ceckForLose(){
  for(Tile t : Tiles){
    if(t.y > height && !t.tapped){
      gameLost(t.x);
    }
  }
}

void addTile(){
  int randomNumber;
  randomNumber = (int) random(3);
  Tiles.add(new Tile(randomNumber * 100));
}

void remove(){
  for(int i = 0; i < Tiles.size(); i++){
    if(Tiles.get(i).delate()){
      Tiles.remove(i);
    }
  }
}

//controlla se la casella più vicina alla fine corrisponde con il taso premuto
void ceck(int bound){
  for(Tile t : Tiles){
    if(!t.tapped && t.x == bound){
      t.tapped = true;
      Punteggio.add();
      break;
    }else if(!t.tapped){
      gameLost(bound);
      break;
    }
  }
}

void keyPressed(){
  if(key == '1'){
    ceck(0);
  }else if(key == '2'){
    ceck(100);
  }else if(key == '3'){
    ceck(200);
  }else if(key == '4'){
    ceck(300);
  }
}
