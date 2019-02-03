class Tile{

  final int xdim = width / 4;
  final int ydim = 170;

  boolean tapped;

  int x;
  int y;

  Tile(){
    this.y = -200;
    this.tapped = true;
  }

  void show(){
    rectMode(CORNER);
    fill(0, 0, 0);
    rect(this.x, this.y, this.xdim, this.ydim);
  }

  void move(){
    this.y +=2;
  }

  boolean delate(){
    if(this.tapped && this.y > height){
      return true;
    }else{
      return false;
    }
  }

}
