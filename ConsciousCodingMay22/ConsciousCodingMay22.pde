float t = 0;

void setup(){
  
  size(1080,1080);
}

void draw(){
  
  background(0);
  translate(width/2,height/2);
  
  loadPixels();
  
  for(int j = 0; j<width; j++){
    for(int i = 0; i<width; i++){
      
      float x = map(i,0,width,-2,2);
      float y = map(j,0,width,-2,2);
      
      Complex z = new Complex(0,0);
      Complex c = new Complex(x,y);
      
      for(int iteration = 0; iteration<2+t; iteration++){
        
        z.exp(2);
        z.add(c);
      }
      
      int index = width*j+i;
      pixels[index] = color(200*z.mag()+150,-100*z.mag()+255,0);
    }
  }
  updatePixels();
  
  t+=1;
}
