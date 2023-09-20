int startX = (int)(Math.random()*500);
int endX = (int)(Math.random()*500);
int startY = 0;
int endY = 0;
float sW = 10;
void setup()
{
  size(500,500);
  background(255);
 
}
void draw()
{

 fill(0,0,50,25);
 rect(-50, -50, 600, 600);
 stroke((int)(Math.random()*20) + 230, (int)(Math.random()*20) + 230, 255);
 fill((int)(Math.random()*100) + 100, (int)(Math.random()*100) + 150, 255);
int rando = (int)(Math.random()*200)+300;
if(Math.random() < 0.8){
  while(endY < rando){
   strokeWeight(sW);
    endX = startX + 9 - (int)(Math.random()*18);
    endY = startY + (int)(Math.random()*20);

    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY; 
    sW-=0.1;
  }
}else{
  if(Math.random() < 0.5){
  line(endX, endY, endX + rando - (int)(Math.random()*40) , endY + rando - (int)(Math.random()*40));
} else {
   line(endX, endY, endX - rando - (int)(Math.random()*40) , endY + rando - (int)(Math.random()*40));
}
}
boolean off = true;
 for( int p = 50; p < 500; p+=25){
   for( int o = 0; o < 550; o+= 50){
    if(off == true)
    rain(o-10, p +10);
    else
    rain(o + 10, p - 10);
    
   }
   if (off == true)
   off = false;
   else
   off = true;
 }
boolean shift = true;
 for(int i = 0; i <= 100; i+=25){
   for(int j = -25; j <= 475; j+=100){
     if(shift == true)
     clouds(j + 50, i);
     else
     clouds(j, i);
   }
   if(shift == true)
   shift = false;
   else
   shift = true;
 }
  }
  
void clouds(int x, int y)
{
  int diam = 0;
  float r = 75+(int)(Math.random()*20);
  noFill();{
    while(diam < 100){
  stroke(r, r, r);
  ellipse(x+15, y+15, diam + 50, diam);
  diam++;
  }
 }
}

void rain(int x, int y ){
  
  noStroke();
  fill(0, 0, (int)(Math.random()*20)+50);
  ellipse(x, y, 10, 10);
  triangle(x - 5, y, x + 5, y, x, y - 10);
 
}

void mousePressed()
{
startX = (int)(Math.random()*500);
endX = (int)(Math.random()*500);
startY = 0;
endY = 0;
sW = 10;

}
