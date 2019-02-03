class Tile{

  final int xdim = width / 4;
  final int ydim = 170;

  boolean tapped;

  final int x;
  int y;

  Tile(){
    this.y = -200;
    this.x = 0;
    this.tapped = false;
  }

  Tile(int x){
    this.y = -200;
    this.x = x;
    this.tapped = false;
  }

  void show(){
    rectMode(CORNER);
    if(this.tapped){
      fill(50, 50, 50);              //se viene premuto cambia colore in grigio
    }else{
      fill(0, 0, 0);
    }
    rect(this.x, this.y, this.xdim, this.ydim);
  }

//muove la casella verticalmente
  void move(int velocity){
    this.y += velocity;
  }

//se la casella esce dallo schermo ed è sata premuta viene restituito true per essere eliminata
  boolean delate(){
    if(this.tapped && this.y > height){
      return true;
    }else{
      return false;
    }
  }

}
