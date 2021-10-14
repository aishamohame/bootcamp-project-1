float xPos;
float xspeed; 
float yPos;
float yspeed;

 
void setup()
{
  size(700,700);
background(0);
blendMode(ADD);//  where the colours overlap it will blend the colours in

 
  xPos = width/2;  
  xspeed = -2; 
  
  yPos=150;
  yspeed=1;
}
 
void draw()
{
  background(64);
  


println(random(10));//this will print a random number between 0,10 or any number you pick
 
int x=0;
while(x<10){ //loop to create rectangles on x axis
  x= x + 1;
  println(x); // print the value of x everytime it updates
  
int y=0;
while(y<10){ //a loop within a loop to produce a grid of rectangles for y axis
   y= y + 1;
   print(y +" ");// puts a space so that it could be all in one line
   
   int posX=x*60;// create variable for positons so that you dont have to input each time
   int posY=y*60;
   float dist=random(10);// random distance so that each shape is randomly arranged
   float squareSize=random(60); //variable to make the width and the height of the rectangles to be the same within the randomness
   //and the numbers in the bracket affect the scale of the shapes
   float colour= random(255);
   
   float t = frameCount/20.0;
  point(width/2 + squareSize*cos(t), height/2 + squareSize*sin(t)); 
  
   fill(colour,colour,90);
  ellipse(posX,posY,50,50);
  
    fill(colour,0,90);
 rect(x*60,y*60,squareSize,squareSize);//these have all random width and height, by using the variable squareSize,
 //the random height and width will be the same.
 
 fill(0,colour,90);
 rect(posX+dist,posY+dist,squareSize,squareSize);// all rectangle have slight different positons so that they are able to be seen
 
 fill(100,colour,90);
 rect(posX+dist*2,posY+dist*2,squareSize,squareSize);
 
 fill(colour,0,0);
 ellipse(posX+dist*3,posY+dist*3,squareSize,squareSize);
   
   fill(255);
   circle(xPos,yPos,50);
 
 xPos = xPos + xspeed;  
 yPos = yPos + yspeed; 
 

 if(xPos<0){
    xspeed=-xspeed;
   
 }
 
 if(xPos>width){
   xspeed=-2;
 
}

if(yPos<0){
    yspeed=-xspeed-yspeed;
   
 }
 
 if(yPos>height){
   yspeed=-2+1;
   
  
 
}
 
 

    
  }

}


}





  
 
  
  
  
  
