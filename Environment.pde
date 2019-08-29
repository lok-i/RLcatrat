class env 
{
  int sx, sy;

  env(int a, int b)
  {
    sx =a;
    sy = b;
  }


  boolean catgotrat(agent Rat, agent Cat)
  {
    if ( ((Rat.c.x-Cat.c.x)*(Rat.c.x-Cat.c.x) +(Rat.c.y-Cat.c.y)*(Rat.c.y-Cat.c.y)) <= Rat.r*Rat.r)
      return(true);

    else
      return(false);
  }
  void render(agent Rat, agent Cat)
  {  
 
//write the reward ........
 if (!catgotrat(Rat, Cat))
    {
      rect(100, 100, 800, 700);
        if (Ratmoved) {
        catcanmove = true ;//only first time is it valid,phir np
        Cat.direct(Rat.c);
        Ratmoved = false;
      }


      if (catcanmove)
        Cat.moveAgent(true);
    
 
  } else
{
  print("--rat is busted ---:-|<>" );
  
}







}






void animate(agent Rat, agent Cat)
{

  if (Rat.isalive(100, 100, 900, 800))
    Rat.drawAgent();

  if (Cat.isalive(100, 100, 900, 800))
    Cat.drawAgent();
    
    fill(0);
    text("TimeStep:", 10, 10);
    fill(255);
    
    
    
    
}
}
