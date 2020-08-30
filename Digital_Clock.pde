
Clock digitClock = new Clock(hour(),minute(),second());

void setup(){
  size(1200, 510);
  frameRate(1);
}

void draw(){
  background(50);
  digitClock.digits();
  digitClock.dots();
  digitClock.update();

}
