ArrayList<Tile> Tiles = new ArrayList<Tile>();

void setup(){
  size(400, 900);
  Tiles.add(new Tile(100));
}

void draw(){

  background(255,255,255);
  for(Tile t : Tiles){
    t.show();
    t.move();
  }

  for(int i = 0; i < Tiles.size(); i++){
    if(Tiles.get(i).delate()){
      Tiles.remove(i);
    }
  }

}

void keyPressed(){
  if(key == '1'){
    if(Tiles.get(Tiles.size() -1).x == 0){
      Tiles.get(Tiles.size() -1).tapped = true;
    }
  }else if(key == '2'){
    if(Tiles.get(Tiles.size() -1).x == 100){
      Tiles.get(Tiles.size() -1).tapped = true;
    }
  }else if(key == '3'){
    if(Tiles.get(Tiles.size() -1).x == 200){
      Tiles.get(Tiles.size() -1).tapped = true;
    }
  }else if(key == '4'){
    if(Tiles.get(Tiles.size() -1).x == 300){
      Tiles.get(Tiles.size() -1).tapped = true;
    }
  }
}
