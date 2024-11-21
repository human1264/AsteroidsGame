class Star {
  private int [] x;
  private int [] y;
  Star(int n){
    x = new int[n];
    y = new int[n];
    for(int i = 0; i < n; i++){
      x[i] = (int)(Math.random()*width);
      y[i] = (int)(Math.random()*height);
    }
  }
  public void wadr(){
    for(int i = 0; i < x.length; i++){
      fill(255,255,255);
      ellipse(x[i], y[i], 2, 2);
      fill(0,0,0);
    }
  }
  
}
