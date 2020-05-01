Particle p;

void setup() {
  size(600, 600);
  
  p = new Particle(width / 2, height / 2, 10, 0, 0, 0, 0, color(255, 0, 0));
}

void draw() {
  background(0);
  p.display();
  
  p.accX = (mouseX - p.x) / 50;
  p.accY = (mouseY - p.y) / 50;
  p.size = dist(p.x, p.y, mouseX, mouseY);
}
