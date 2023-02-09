float baseH = 20;
float armL1 = 60;
float armL2 = 60;
float armW1 = 10;
float armW2 = 10;
float ball  =  5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float xx     = 0;
float yy     = 0;
float zz     = 0;
float bb     = 0;
float dif  = 1.0;

void setup(){
  size(1000, 800, P3D);
  
  camera(200, 200, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
   
     if(key == 'x'){
      xx     = xx + dif;
    }
    if(key == 'X'){
      xx     = xx - dif;
    }
     if(key == 'y'){
      yy     = yy + dif;
    }
    if(key == 'Y'){
      yy     = yy - dif;
    }
    if(key == 'z'){
      zz     = zz + dif;
    }
    if(key == 'Z'){
      zz     = zz - dif;
    }
    if(key == 'o'){
      angle0 = angle0 + dif;
    }
    if(key == 'O'){
      angle0 = angle0 - dif;
    }
    if(key == 'i'){
      angle1 = angle1 + dif;
    }
    if(key == 'I'){
      angle1 = angle1 - dif;
    }
    if(key == 'u'){
      angle2 = angle2 + dif;
    }
     if(key == 'U'){
      angle2 = angle2 - dif;
    }
     if(key == 'b'){
      bb     = bb + dif;
    }
     if(key == 'B'){
      bb     = bb - dif;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0+xx,0+yy,baseH/2+zz);
  fill(125);
  box(10,10,baseH);
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,armL1/2-armW1/2,baseH/2+armW1/2);
  fill(100);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(0,-armW1,armW2);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,armW2,0);
  fill(50);
  box(armW2,armL2,armW2);
  
  //ball
  translate(0,armL2/2+ball/2+bb,0);
  rotateX(radians(angle2));  
  fill(1);
  sphere(ball);
 
}
