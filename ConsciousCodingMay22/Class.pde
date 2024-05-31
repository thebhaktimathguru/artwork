class Complex{
  
  float a;
  float b;
  
  Complex(float _a, float _b){
    
    a = _a;
    b = _b;
  }
  
  void add(Complex other){
    
    a+=other.a;
    b+=other.b;
  }
  
  void sub(Complex other){
    
    a-=other.a;
    b-=other.b;
  }
  
  void mult(Complex other){
    
    float aTemp = a*other.a - b*other.b;
    float bTemp = a*other.b + b*other.a;
    a = aTemp;
    b = bTemp;
  }
  
  void scale(float c){
    
    a*=c;
    b*=c;
  }
  
  void exp(float n){
    
    float theta = atan2(b,a);
    float r = dist(0,0,a,b);
    a = pow(r,n) * cos(n*theta);
    b = pow(r,n) * sin(n*theta);
  }
  
  float mag(){
    
    return dist(0,0,a,b);
  }
}
