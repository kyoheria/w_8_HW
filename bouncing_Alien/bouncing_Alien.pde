ArrayList<Alien> alien;

void setup() {
  size(600, 600);
  //instantiate the Ball object by calling the constructor
  alien = new ArrayList<Alien>();
  
}

void draw() {
  background(255);
  //call the update and display methods of the Ball object
  for (int i = 0; i < alien.size(); i++) {
    Alien a = alien.get(i);
    a.update();
    a.display();
  }
}

void mouseClicked(){
    alien.add(new Alien());
}