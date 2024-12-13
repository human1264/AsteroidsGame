class Boolet extends Floater{
  private int startTime = 0;
  private int lifeTime = 100;
  
  Boolet(Spaceship a){
    myCenterX = a.getx();
    myCenterY = a.gety();
    myXspeed = a.getxspd();
    myYspeed = a.getyspd();
    myPointDirection = a.getrot();
    accelerate(10);
  }
  public void show(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    ellipse((float)myCenterX, (float)myCenterY, 2,2);
  }
  public double getx(){
    return(myCenterX);
  }
  public double gety(){
    return(myCenterY);
  }
  public int getlife(){
    return(lifeTime);
  }
  public int getStart(){
    return(startTime);
  }
  public void setStart(int a){
    startTime = a;
  }
}
