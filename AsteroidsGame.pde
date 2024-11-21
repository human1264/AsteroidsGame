Star a;
Spaceship b;
boolean rotCW = false;
boolean rotCCW = false;
boolean accelerate = false;

public void setup(){
size(600,600);
a = new Star(200);
b = new Spaceship();
}

public void draw(){
background(0,0,0);
a.wadr();
//smooth movement
if(rotCW == true){b.addrot(3.14);}
if(rotCCW == true){b.addrot(-3.14);}
if(accelerate == true){b.accelerate(0.25);}
b.move();
b.show();  
}
void keyPressed(){
  if(key == 'w'){
    accelerate = true;
  }
  if(key == 'd'){
    rotCW = true;
  }
  if(key == 'a'){
    rotCCW = true;
  }
  if(key == 's'){
    b.setx(Math.random()*width);
    b.sety(Math.random()*height);
    b.setrot(Math.random()*360);
    b.myXspeed = 0;
    b.myYspeed = 0;
    
  }
}

void keyReleased(){
  if(key == 'd'){
    rotCW = false;
  }
  if(key == 'a'){
    rotCCW = false;
  }
  if(key == 'w'){
    accelerate = false;
  }
}
