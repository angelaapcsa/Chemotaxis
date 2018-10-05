Bacteria[] bob;
float easing = 50;
 void setup()   
 {    
   size(300,300);
   bob = new Bacteria[1000];
   for (int i = 0; i <bob.length; i++)
  {
    bob[i]=new Bacteria();
  }
 }   
 void draw()   
 {
   background(0);
   
   for (int i = 0; i <bob.length; i++)
   {
    bob[i].show();
    bob[i].move();
   }
 }  
 class Bacteria    
 {
   float bX,bY;
   int bColor;
   Bacteria()
   {
     bX = (int)(Math.random()*299)+1;
     bY = (int)(Math.random()*299)+1;
     bColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   }
   void move()
   {
     bX = bX + (int)(Math.random()*7)-3;
     bY = bY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     fill(bColor);
     ellipse(bX,bY,10,10);
   }
 }    
