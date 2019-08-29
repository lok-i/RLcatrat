
agent Rat, Cat;
int i =0;
long iter =0;


boolean Ratmoved = false;
boolean catcanmove = false;

env e;



void setup()
{

  size(1000, 900); 
  Rat = new agent(120, 680, 15, color(0, 0, 255),20);
  Cat = new agent(790, 150, 30, color(255, 0, 0),1);
  e = new env(1000,900);
 
  background(255);
}


void draw()
{

  
e.render(Rat,Cat);
e.animate(Rat,Cat);

  // delay(1000);
  iter++;
}

void keyPressed()
{
  if (key == CODED)


    switch(keyCode)
  {
    case(UP):
    {
      Rat.moveAgent(true); 
      Ratmoved = true;
      break;
    }

    case(DOWN):
    {
      Rat.moveAgent(false); 
      Ratmoved = true;
      break;
    }

    case(RIGHT):
    { 
      i+=2;
      Rat.rotateAgent(3.14*i/180);
      break;
    }

    case(LEFT):
    {
      i-=2;
      Rat.rotateAgent(3.14*i/180);
      break;
    }
  }
}
