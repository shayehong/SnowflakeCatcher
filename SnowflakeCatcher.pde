
Snowflake[] snow;
void setup()
{
  //your code here
  background(0);
  size(300,300);
  snow = new Snowflake[30];

  for(int i = 0; i< snow.length; i++){
      snow[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
  for(int i = 0; i < snow.length; i++){
    snow[i].erase();
    snow[i].lookDown();
    snow[i].move();
    snow[i].wrap();
    snow[i].show();
  }


}
void mouseDragged()
{
  //your code here
  noStroke();
  fill(3,255,200);
  ellipse(mouseX,mouseY,10,10);
}

class Snowflake
{
  //class member variable declarations
  int x;
  int y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    isMoving = true;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    ellipse(x,y,5,5);

  }
  void lookDown()
  {
    //your code here
    if((y < 300 && y> 0) && (get(x,y) != color(0))){
      isMoving = false;
    }
    else{
      isMoving = true;
    }

  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x,y,7,7);

  }
  void move()
  {
    //your code here
    if(isMoving == true){
      y++;
    }
  }
  void wrap()
  {
    //your code here
    if(y >300){
      y = 0;
      x = (int)(Math.random()*300);
    }

  }
}


