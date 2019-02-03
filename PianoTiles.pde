ArrayList<Tile> Tiles = new ArrayList<Tile>();
int velocity;
int timing;
boolean canSpawn;
Score Punteggio;

void setup(){
  size(400, 900);
  Punteggio = new Score();
  Tiles.add(new Tile(300));
  velocity = 3;
}

void draw(){
  background(124,120,255);
  canSpawn = true;
  for(Tile t : Tiles){
    t.show();
    t.move(velocity);
    if(t.y < -50){
      canSpawn = false;
    }
  }
  remove();
  if(canSpawn){
    timing ++;
    addTile();
  }
  if(timing > 5){
    timing = 0;
    velocity +=1;
  }
  ceckForLose();
  Punteggio.show();
}

void ceckForLose(){
  for(Tile t : Tiles){
    if(t.y > height && !t.tapped){
      noLoop();
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

void ceck(int bound){
  for(Tile t : Tiles){
    if(!t.tapped && t.x == bound){
      t.tapped = true;
      Punteggio.add();
      break;
    }else if(!t.tapped){
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
