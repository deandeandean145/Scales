void setup() {
  size(500, 500);
  background(250, 250, 250);
  noStroke();
 
 
}
void triangleUp(int x, int y) {
 
  color inside = color(140, 101, 211);
  color middle = color(154, 147, 211);
  color outside = color(113,199,236);
 
  pushMatrix();
 
  fill(outside);
  beginShape();
  vertex(0+x, 0+y);
  vertex(80+x, 0+y);
  vertex(40+x, 110+y);
  endShape(CLOSE);
 
  fill(middle);
  beginShape();
  vertex(15+x, 20+y);
  vertex(65+x, 20+y);
  vertex(40+x, 100+y);
  endShape(CLOSE);
 
  fill(inside);
  beginShape();
  vertex(25+x, 35+y);
  vertex(55+x, 35+y);
  vertex(40+x, 65+y);
  endShape(CLOSE);
  popMatrix();
}
void triangleDown(int a, int b) {
 
  color inside = color(140, 101, 211);
  color middle = color(154, 147, 211);
  color outside = color(113,199,236);
 
  pushMatrix();
 
  fill(inside);
  beginShape();
  vertex(-40+a, 110+b);
  vertex(40+a, 110+b);
  vertex(0+a, 0+b);
  endShape(CLOSE);
 
  fill(middle);
  beginShape();
  vertex(-25+a, 90+b);
  vertex(25+a, 90+b);
  vertex(0+a, 10+b);
  endShape(CLOSE);
 
  fill(outside);
  beginShape();
  vertex(-15+a, 70+b);
  vertex(15+a, 70+b);
  vertex(0+a, 35+b);
  endShape(CLOSE);
  popMatrix();
}
void draw(){
  for(int y = 0; y < 441; y+=110)
    for(int x = 0; x < 481; x+=80)
      triangleUp(x,y); 
   
  for(int b = 0; b < 441; b+=110)
    for(int a = 0; a < 481; a+=80)
      triangleDown(a,b);
   


}

