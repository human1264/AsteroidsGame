class Spaceship extends Floater  
{ 
  Spaceship(){
    corners = 9;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -4;
    xCorners[1] = -8;
    yCorners[1] = -2;
    xCorners[2] = -8;
    yCorners[2] = -4;
    xCorners[3] = 8;
    yCorners[3] = -4;
    xCorners[4] = 14;
    yCorners[4] = 0;
    xCorners[5] = 8;
    yCorners[5] = 4;
    xCorners[6] = -8;
    yCorners[6] = 4;
    xCorners[7] = -8;
    yCorners[7] = 2;
    xCorners[8] = -10;
    yCorners[8] = 4;
    myCenterX = 150;
    myCenterY = 150;
    myColor = 255;  
  }
  public double getxspd(){
    return(myXspeed);
  }
  public void setxspd(double n){
    myXspeed = n;
  }
    public double getyspd(){
    return(myYspeed);
  }
  public void setyspd(double n){
    myYspeed = n;
  }
    public double getrot(){
    return(myPointDirection);
  }
  public void addrot(double n){
    myPointDirection += n;
  }
  public void setrot(double n){
    myPointDirection = n;
  }
  public void setx(double n){
    myCenterX = n;
  }
  public void sety(double n){
    myCenterY = n;
  }

  
}
