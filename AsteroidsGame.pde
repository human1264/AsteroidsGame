Star a;
Spaceship b;
Asteroid c;
ArrayList <Asteroid> d;
Asteroid e;
boolean rotCW = false;
boolean rotCCW = false;
boolean accelerate = false;

public void setup(){
size(600,600);
a = new Star(200);
b = new Spaceship();
c = new Asteroid();
d = new ArrayList <Asteroid>();
  for(int i = 0; i < 30; i++){
    e = new Asteroid();
    d.add(e);
  }
}

public void draw(){
background(0,0,0);
a.wadr();
//smooth movement
if(rotCW == true){b.addrot(3.14);}
if(rotCCW == true){b.addrot(-3.14);}
if(accelerate == true){b.accelerate(0.125);}
b.move();
b.show();  
//c.move();
//c.show();
  for(int i = 0; i < d.size(); i++){
    d.get(i).move();
    d.get(i).show();
    if(dist((float)d.get(i).getCentX(),(float)d.get(i).getCentY(),(float)b.getx(),(float)b.gety()) <= 25){
    d.remove(i);
    }
  }
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
