class Score{

  int score;
  final int PositionX;
  final int PositionY;

  Score(){
    this.score = 0;
    this.PositionX = width /2;
    this.PositionY = 40;
  }

  void show(){
    textAlign(CENTER, BOTTOM);
    fill(255, 50, 50);
    textSize(30);
    text(this.score, this.PositionX, this.PositionY);
  }

  void add(){
    this.score += 1;
  }

  void add(int ammount){
    this.score += ammount;
  }

}
