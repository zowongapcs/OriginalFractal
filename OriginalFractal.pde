public void setup()
{
  size(1400,750);
  rectMode(CENTER);
  stroke(0);
}
public void draw()
{
  background(0);
  myFractal(700,550,380);
  noStroke();
  myFractal(700,550,400);
  myFractal(700,550,420);
}
public void myFractal(int x, int y, int siz)
{
  fill(255);
  rect(x,y,siz/10,siz);
  rect(x-350,y-150,siz/20,siz/2);
  rect(x+350,y-150,siz/20,siz/2);
  fill(210,0,0);
  if(siz>10)
  {
    myFractal(x-siz/2,y-siz/2,siz/2);
    myFractal(x+siz/2,y-siz/2,siz/2);
    myFractal(x,y,siz/2);
  }
}
