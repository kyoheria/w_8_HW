//the definition for the Ball class

class Alien {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity
  PImage alien; 
  float rightEdge;
  float bottomEdge;
  //think of the constructor function as the setup() for the object instance.
  //notice there is no "void" or return type. Technically it returns itself (a Ball)
  //this constructor takes no arguments - it sets all fields automatically.
  Alien() {
    alien = loadImage("alien.jpg");
    x = width/2;
    y = height/2;
    dx = random(-3, 3);  //set a random velocity
    dy = random(-3, 3);
    //println("created a ball!");
  }

  // call this method to display the ball
  void display() {
    noStroke();
    fill(100);
    image(alien, x, y,100,100);
  }

  // call this method to update the ball's position
  void update() {
    rightEdge=x+100;
    bottomEdge=y+100;
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    if (x < 0 || rightEdge > width) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < 0 || bottomEdge > height) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }
  
    
  
}