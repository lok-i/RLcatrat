



class agent
{ 
  PVector c,h;
  int r;
  float rad;
  color body;
  boolean life ;
  int stepsize ;
  
  boolean isalive(int x,int y,int x2,int y2)
  {
    if(c.x-x<r || x2 -c.x <r || c.y-y<r || y2 -c.y < r  )
    life = false;
    else
     life = true;
     
     return (life);
    
    
  }
  
  
  
  
  
  
  
  agent(int sx,int sy,int R,color b,int step)
  { r=R;
  life = true ;
   body = b;
    c = new PVector(sx,sy);
    h = new PVector(sx,(sy-r));
    rad =0;
    stepsize = step;
    h.set(c.x+r*sin(rad),c.y-r*cos(rad));
  }
  
  
void direct(PVector t)
{  
  if(t.x>=c.x)
  rad = 1.5708 + atan((t.y-c.y)/(t.x-c.x));
  else
  rad = -1.5708 + atan((t.y-c.y)/(t.x-c.x));
  
  
  h.set(c.x+r*sin(rad),c.y-r*cos(rad));
}





void rotateAgent(float Rangle)
{
   
  rad = Rangle;

 h.set(c.x+r*sin(rad),c.y-r*cos(rad)); 

  
}

void moveAgent(boolean forward)
{
if(forward){
c.set((stepsize*h.x+(r-stepsize)*c.x)/r,(stepsize*h.y+(r-stepsize)*c.y)/r);  
h.set(c.x+r*sin(rad),c.y-r*cos(rad)); }

else
{
c.set(-1*(stepsize*h.x-(r+stepsize)*c.x)/r ,-1*(stepsize*h.y-(r+stepsize)*c.y)/r);  
h.set(c.x+r*sin(rad),c.y-r*cos(rad));
}

}
 
 
  
  void drawAgent()
 { fill(body);
   ellipse(c.x,c.y,2*r,2*r);
   line(c.x,c.y,h.x,h.y);
  fill(255);
 
 
 }
 
  
  
  
  
}



// float A =r*r;
//   float B =(t.x-c.x)*(t.x-c.x) +  (t.y-c.y)*(t.y-c.y); 
//   float C =(t.x-h.x)*(t.x-h.x) +  (t.y-h.y)*(t.y-h.y);  
    
//  float Rangle = acos((A+B-C)/(2*sqrt(B*A)));

 
//  if(h.y<c.y)
//   {if(t.x<=c.x)
//   Rangle =-1*Rangle;}
//  else
//   if(t.x>=c.x)
//   Rangle =-1*Rangle;
  
// rad +=Rangle;
// h.set(c.x+r*sin(rad),c.y-r*cos(rad)); 
