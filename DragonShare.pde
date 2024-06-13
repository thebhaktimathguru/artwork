float t = 0;
float dt = 0.0166666667;

void setup() {

  size(1080, 1920, P3D);
  colorMode(HSB,400);
} 

void draw() {

  background(0);
  translate(width/2,height/2);
  
  PVector[] p = new PVector[2];
  p[0] = new PVector(0,0);
  p[1] = new PVector(25,0);
  
  stroke(400);strokeWeight(3);noFill();
  rec(p,10);
}

void rec(PVector[] p, int c){
  
  PVector[] newP = new PVector[2*p.length-1];
  
  PVector pivot = new PVector(0,0);
  pivot.set(p[p.length-1]);
  
  for(int i = 0; i<p.length; i++){
    
    float a = PI/2;
    newP[i] = p[i];
    newP[newP.length-i-1] = p[i].copy().sub(pivot).rotate(a).add(pivot);
  }
  
  if(c==0){
        
    beginShape();
    
      for(int i = 0; i<newP.length; i++){
        
        vertex(newP[i].x,newP[i].y);
      }
      
    endShape();
    
    return;
  }
  
  rec(newP,c-1);
}
