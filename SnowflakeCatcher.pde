
Snowflake[] snow;
void setup()
{
  //your code here
  background(0);
  size(500,500);
  snow = new Snowflake[50];

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
  ellipse(mouseX,mouseY,12,12);
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
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    isMoving = true;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);
    ellipse(x,y,6,6);

  }
  void lookDown()
  {
    //your code here
    if((y <= 490 && y >= 0) && (get(x,y+7) != color(0,0,0))){
      isMoving = false;
    }
    else{
      isMoving = true;
    }

  }
  void erase()
  {
    //your code here
   // noStroke();
    fill(0,0,0);
    ellipse(x,y,8,8);

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
    if(y >500){
      y = 0;
      x = (int)(Math.random()*500);
    }

  }
}


