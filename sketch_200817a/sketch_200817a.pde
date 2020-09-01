float x = 0, y = 500;
float Ben = 20;
float Speed = 1;
float farve;
float KX = 350, KY = 50, D;

void setup(){
 size(500,900); 
}

void draw(){
  background(255);
  fill(238,127,27);
  ellipse(500,550,200,300);
  fill(0,130,196);
  ellipse(0,550,200,300);
  fill(50);
 rect(0,700,1500,200); //jord
 //ben
 fill(150);
quad(x,y+100,x+25+0.5*Ben,y+125,x+Ben,y+200,x+50+0.5*Ben,y+100);
quad(x+50,y+100,x+75-0.5*Ben,y+125,x+50-Ben,y+200,x+100-0.5*Ben,y+100);
//klods
fill(200);
rect(x,y,100-0.5*Ben,100);
fill(farve,0,0);
rect(x+25,y+25,50-0.5*Ben,50);
x += 1;

//ben bevægelse
Ben += Speed;
if(Ben > 20){Speed = -1;}
if(Ben < -20){Speed = 1;}

//loop
if(x > 501){x = - 101;}

//Knap
fill(255,50,50);
rect(KX,KY,100,100);
fill(0);
text("Knap",KX,KY);
}
void mouseClicked(){
D = dist(KX+50,KY+50,mouseX,mouseY);
if(D <= 50){
 farve = 255;
}
}
