int x = 20;
int y = 20;
int xD = 50;
int yD = 50;
int radius = 100;
int hue = 160;
float saturation = .8;
float brightness = .5;

public void setup()
{
  fullScreen();
  background(200);
  x = (int)(Math.random()*width);
  y = (int)(Math.random()*height);
  colorMode(HSB, 360, 1, 1);
  fill(hue, saturation, brightness);
  ellipse(x, y, radius, radius);
}

public void draw()
{
  System.out.println("Radius: " + radius );
  background(200);
  fill(hue, saturation, 0.8);  
  x += xD;
  y += yD;
  ellipse(x, y, radius, radius);

   
  if(x > width || x < 0)
  {
    xD *= -1;
    hue += (int)(Math.random()*20 - 10);    
  }
  
  if(y > height || y < 0)
  {
    yD *= -1;
    saturation += (float)(Math.random() * 0.3 - 0.15);    
  }


  // CHASE THE MOUSE AROUND THE SCREEN
  if(x < mouseX)
    x += xD;
  else
    x -= xD;
  if(y < mouseY)
    y += yD;
  else
    y -= yD;
  System.out.println("x value: " + x + "\tmouseX: " + mouseX);
  
  if( Math.abs(x - mouseX) < radius && Math.abs(y - mouseY) < radius)
  {
    xD = 0;
    yD = 0;
    textSize(100);
    text("GAME OVER", width/4, height/4); 
    noLoop();
  
  }
  
    if(keyPressed && key == CODED && keyCode == UP)
    {
          radius+=5;
          System.out.println(radius);
    }
   
     if(keyPressed && key == CODED && keyCode == DOWN)
      {
        radius-=5;
        System.out.println(radius);
      }
      if(keyPressed && key == CODED && keyCode == LEFT)
      {
        if(xD < 0)
          xD--;
        else
          xD++;
        if(yD < 0)
          yD--;
        else
          yD++;        
      }
      if(keyPressed && key == CODED && keyCode == RIGHT)
      {
        if(xD < 0)
          xD++;
        else
          xD--;
        if(yD < 0)
          yD++;
        else
          yD--;        
      }
    
    
}

public void mousePressed()
{
  hue = (int)(Math.random() * 360);
  System.out.println(brightness);
}
/*
public void keyPressed()
{
  if(key == CODED){
    if(key == UP)
      {
        radius++;
        System.out.println(radius);
      }
    if(key == 'a')
    {
      radius--;
      System.out.println(radius);
    }
    if(keyCode == LEFT)
    {
      if(xD < 0)
        xD--;
      else
        xD++;
      if(yD < 0)
        yD--;
      else
        yD++;        
    }
    if(keyCode == RIGHT)
    {
      if(xD < 0)
        xD++;
      else
        xD--;
      if(yD < 0)
        yD++;
      else
        yD--;        
    }

  }

}
*/
