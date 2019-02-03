ArrayList<Tile> Tiles = new ArrayList<Tile>();

void setup(){
  size(400, 900);
  Tiles.add(new Tile());
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
  print(Tiles.size());

}

void keyPressed(){
  if(key == '1'){

  }else if(key == '2'){

  }else if(key == '3'){

  }else if(key == '4'){

  }
}
