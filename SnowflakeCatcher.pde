
Snowflake[]colony;

//PImage background;

void setup()
{
  frameRate(20);
 size(500,500);
 //image(background,0,0,500,500);
 colony=new Snowflake[299];
 for(int i=0; i<colony.length;i++)
 {
  colony[i]=new Snowflake();



 }
 background (255);

//your code here
  // background=loadImage("http://lightonthepage.com/wp-content/uploads/2013/02/blue-night.jpg"); 

}
void draw()
{
 //mouseDragged();


 for (int i=0; i<colony.length; i++)
 { 
  colony[i].erase();
  colony[i].lookDown();
  colony[i].move();
  colony[i].wrap();
  colony[i].show();

 }



/*int x,y;
{
  x=250;
  y=250;
 ellipse(x,y,7,7);
}*/

   //your code here
}
void mouseDragged()
{
if (mousePressed==true);

/*int value;
value=0;
  value = value + 5;
  if (value > 255) 
  {
    value = 0;
  }
  */
  fill(0,129,227);
  ellipse(mouseX,mouseY,20,20);

  //your code here
}

class Snowflake
{
  int x,y;
  boolean isMoving;
  //class member variable declarations
  Snowflake()
  {
// myx=x; 
 //   myy=y;
    x=(int)(Math.random()*500);
    y=(int)(Math.random()*500);
    isMoving=true;
       

    //class member variable initializations
  }
  void show()
  {
    //image(background,0,0,500,500);
  //background(255);
  fill(0,191,255);
  ellipse(x,y,8,8);  //your code here
       
  }
  void lookDown()
  {
    
  if (y>500)
   {
     isMoving=false;
       
   }
    //your code here
  }
  void erase()
  {
    fill(255);
    noStroke();
    ellipse(x,y,9,9);

    //your code here
  }
  void move()
  {
    if (isMoving==true)
   {  
      y=y+1;
   }
    //your code here
  }
  void wrap()
  {
  if (y>500)
    {
      x=(int)(Math.random()*500);
      y=0;
    //your code here
    }
  }
}


