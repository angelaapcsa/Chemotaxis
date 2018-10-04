Bacteria bob = new Bacteria();

 void setup()   
 {    
   size(300,300);
   
 }   
 void draw()   
 {
   bob.show();
   bob.move();
 }  
 class Bacteria    
 {
   int bX,bY,bColor;
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
     ellipse(bX,bY,30,30);
   }
 }    
