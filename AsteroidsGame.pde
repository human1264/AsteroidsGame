Star a;
Spaceship b;
Asteroid c;
ArrayList <Asteroid> d;
Asteroid e;
ArrayList <Boolet> f;
boolean rotCW = false;
boolean rotCCW = false;
boolean accelerate = false;
boolean isFiring = false;
int counter = 0;

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
f = new ArrayList <Boolet>(30);
}

public void draw(){
counter++;
background(0,0,0);
a.wadr();
//smooth movement
if(rotCW == true){b.addrot(3.14);}
if(rotCCW == true){b.addrot(-3.14);}
if(accelerate == true){b.accelerate(0.125);}
//smooth firing
if(isFiring == true && counter % 10 == 0){
  f.add(new Boolet(b));
  f.get(f.size()-1).setStart(counter);
  b.accelerate(-0.02);
}
b.move();
b.show();  
//c.move();
//c.show();
  for(int c = 0; c < d.size(); c++){
    d.get(c).move();
    d.get(c).show();
    if(dist((float)d.get(c).getCentX(),(float)d.get(c).getCentY(),(float)b.getx(),(float)b.gety()) <= 25){
    d.remove(c);
      if(c > 0){c--;}
    }
  
    //checks for bullet-asteroid collision
    for(int i = 0; i < f.size(); i++){
      for(int k = 0; k < d.size(); k++){
        
          if(dist((float)d.get(k).getCentX(),(float)d.get(k).getCentY(),(float)f.get(i).getx1(),(float)f.get(i).gety1()) <= 25){
            f.remove(i);
            d.remove(k);
            if(k > 0){k--;}
            if(i > 0){i--;}
            break;
            
          } 
        }
      }
    }
  
  
  
  
  
  for(int i = 0; i < f.size(); i++){
    f.get(i).show();
    if(counter - f.get(i).getStart() > f.get(i).getlife()){
      f.remove(i);
      i--;
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
  if(key == 'j'){
     isFiring = true;
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
  if(key == 'j'){
    isFiring = false;
  }
}
