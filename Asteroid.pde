class Asteroid extends Floater{
private double rotSpeed = 0;
Asteroid(){   
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8 + ((int)(Math.random()*8-3));
    yCorners[0] = -15 + ((int)(Math.random()*8-3));
    xCorners[1] = 8 + ((int)(Math.random()*8-3));
    yCorners[1] = -15 + ((int)(Math.random()*8-3));
    xCorners[2] = 20 + ((int)(Math.random()*8-3));
    yCorners[2] = 0 + ((int)(Math.random()*8-3));
    xCorners[3] = 8 + ((int)(Math.random()*8-3));
    yCorners[3] = 15 + ((int)(Math.random()*8-3));
    xCorners[4] = -8 + ((int)(Math.random()*8-3));
    yCorners[4] = 15 + ((int)(Math.random()*8-3));
    xCorners[5] = -20 + ((int)(Math.random()*8-3));
    yCorners[5] = 0 + ((int)(Math.random()*8-3));
    myCenterX = 150;
    myCenterY = 150;
    myColor = 255;
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myPointDirection = Math.random() * 360;
    rotSpeed = Math.random()*2-1;
} 
  public void move(){
  myPointDirection += rotSpeed;
  super.move();
  
  }
  public double getCentX(){
    return(myCenterX);
  }
  public double getCentY(){
    return(myCenterY);
  }
  public void setcord(double x, double y){
    myCenterX = x;
    myCenterY = y;
  }
}
