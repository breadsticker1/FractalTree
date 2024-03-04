private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(750,750);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  //ball 
  stroke(#FF1803);
  drawBranches(375,380,100,3*Math.PI/2);  //will add later 
  drawBranches(375,380,100,2.2*Math.PI/2);
  drawBranches(375,380,100,3.8*Math.PI/2);
  drawBranches(375,380,100,4.5*Math.PI/2);
  drawBranches(375,380,100,5.5*Math.PI/2);
  drawBranches(375,380,100,2.5*Math.PI/2);
  drawBranches(375,380,100,3.4*Math.PI/2);
  drawBranches(375,380,100,1.8*Math.PI/2);
  drawBranches(375,380,100,4.1*Math.PI/2);
  drawBranches(375,380,100,5*Math.PI/2);
  stroke(#FFC503);
  drawBranches(375,380,85,3*Math.PI/2);  //will add later 
  drawBranches(375,380,85,2.2*Math.PI/2);
  drawBranches(375,380,85,3.8*Math.PI/2);
  drawBranches(375,380,85,4.5*Math.PI/2);
  drawBranches(375,380,85,5.5*Math.PI/2);
  drawBranches(375,380,85,2.5*Math.PI/2);
  drawBranches(375,380,85,3.4*Math.PI/2);
  drawBranches(375,380,85,1.8*Math.PI/2);
  drawBranches(375,380,85,4.1*Math.PI/2);
  drawBranches(375,380,85,5*Math.PI/2);
  stroke(#FAFF03);
  drawBranches(375,380,65,3*Math.PI/2);  //will add later 
  drawBranches(375,380,65,2.2*Math.PI/2);
  drawBranches(375,380,65,3.8*Math.PI/2);
  drawBranches(375,380,65,4.5*Math.PI/2);
  drawBranches(375,380,65,5.5*Math.PI/2);
  drawBranches(375,380,65,2.5*Math.PI/2);
  drawBranches(375,380,65,3.4*Math.PI/2);
  drawBranches(375,380,65,1.8*Math.PI/2);
  drawBranches(375,380,65,4.1*Math.PI/2);
  drawBranches(375,380,65,5*Math.PI/2);
  stroke(#88FF03);
  drawBranches(375,380,50,3*Math.PI/2);  //will add later 
  drawBranches(375,380,50,2.2*Math.PI/2);
  drawBranches(375,380,50,3.8*Math.PI/2);
  drawBranches(375,380,50,4.5*Math.PI/2);
  drawBranches(375,380,50,5.5*Math.PI/2);
  drawBranches(375,380,50,2.5*Math.PI/2);
  drawBranches(375,380,50,3.4*Math.PI/2);
  drawBranches(375,380,50,1.8*Math.PI/2);
  drawBranches(375,380,50,4.1*Math.PI/2);
  drawBranches(375,380,50,5*Math.PI/2);
  stroke(#037EFF);
  drawBranches(375,380,40,3*Math.PI/2);  //will add later 
  drawBranches(375,380,40,2.2*Math.PI/2);
  drawBranches(375,380,40,3.8*Math.PI/2);
  drawBranches(375,380,40,4.5*Math.PI/2);
  drawBranches(375,380,40,5.5*Math.PI/2);
  drawBranches(375,380,40,2.5*Math.PI/2);
  drawBranches(375,380,40,3.4*Math.PI/2);
  drawBranches(375,380,40,1.8*Math.PI/2);
  drawBranches(375,380,40,4.1*Math.PI/2);
  drawBranches(375,380,40,5*Math.PI/2);
  stroke(#9903FF);
  drawBranches(375,380,30,3*Math.PI/2);  //will add later 
  drawBranches(375,380,30,2.2*Math.PI/2);
  drawBranches(375,380,30,3.8*Math.PI/2);
  drawBranches(375,380,30,4.5*Math.PI/2);
  drawBranches(375,380,30,5.5*Math.PI/2);
  drawBranches(375,380,30,2.5*Math.PI/2);
  drawBranches(375,380,30,3.4*Math.PI/2);
  drawBranches(375,380,30,1.8*Math.PI/2);
  drawBranches(375,380,30,4.1*Math.PI/2);
  drawBranches(375,380,30,5*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if(branchLength > smallestBranch){
    drawBranches(endX1,endY1,branchLength,angle1);
    drawBranches(endX2,endY2,branchLength,angle2);
  }
} 
