float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;
float newx = random(x);
float newy = random(y);
int rand_num = int(random(3))-1;

void setup() {
  size(800,800);
  smooth();
  background(255);
}

void draw() {
  rand_num = int(random(3))-1;;
  x = x + xspeed;
  y = y + yspeed;
    
  if (rand_num == 1 || rand_num == 3) { 
    xspeed = xspeed * -1;
  }
  else if (rand_num == 0 || rand_num == 2) {
    yspeed = yspeed * -1;
  }
  
  if ((x > width) || (x < 0)) { 
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  stroke(0);
  fill(175);
  newx = random(x);
  newy = random(y);
  //ellipse(x,y,16,16);
  // Top left
  line(x,y,x,y);
  line(y,x,y,x);
  
  // Top right
  line(width-x,y,width-x,y);
  line(width-y,x,width-y,x);
  
  // bottom right
  line(width-x,height-y,width-x,height-y);
  line(width-y,height-x,width-y,height-x);
  
  // bottom right
  line(x,height-y,x,height-y);
  line(y,height-x,y,height-x);
  //color(y,x);
}
