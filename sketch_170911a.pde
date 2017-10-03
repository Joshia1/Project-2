int x =400;
int y =400;
int COUNT = 50;
float [] Xs = new float [COUNT];
float [] Ys = new float [COUNT];
PImage skyline; 
String m = "Mumbai"; 
float rh= 10;
void setup ()

{
 fullScreen(P2D); 
 
  for (int i=0; i <COUNT; i++)
  {
    Xs[i]=random(width);
    Ys[i]=random(height);
  }
  skyline = loadImage ("skyline.jpg");
  textAlign (CENTER);
}
 
void draw ()
{
SetBackground ();
DrawEllipse (); 
DrawRect ();
WriteText ();
}

void SetBackground ()
{
  imageMode (CORNER); 
  image (skyline, 0, 0);
  imageMode (CENTER) ;
  
}

void DrawEllipse()
{
  for (int i=0; i < COUNT; i++) 
  {
    fill((98),(178),(255));
    ellipse (Xs[i], Ys[i], 18, 18);

    Ys[i]++;


    if (Ys[i] > height)
    {
      Ys[i]=0;
    }
  }
  }

void DrawRect ()
{
 
  {
  rect(0,890, width, rh);
 for(int i=0; i<Ys.length; i++)
{
if ( Ys [i] > height-rh);
{
  rh=rh+10;
  rect(0,rh, width, 10);
}
}
 

 
  }
 

} 

void WriteText ()
{
  textSize (100);
text (m, width/2, height/2);
}