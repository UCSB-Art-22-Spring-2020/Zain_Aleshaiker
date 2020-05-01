class Particle {
  float x, y;
  float size;
  float velX, velY;
  float accX, accY;
  color col;
  
  Particle(float x_, float y_, float size_, float velX_, float velY_, float accX_, float accY_, color col_) {
    x = x_;
    y = y_;
    size = size_;
    velX = velX_;
    velY = velY_;
    accX = accX_;
    accY = accY_;
    col = col_;
  }
  
  void display() {
    strokeWeight(size);
    stroke(col);
    point(x, y);
    velX += accX;
    velY += accY;
    x += velX;
    y += velY;
  }
}
