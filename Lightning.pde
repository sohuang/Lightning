int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup() {
  size(300,300);
  strokeWeight(0.5);
  background(0);
  frameRate(1);
}

void draw() {
	stroke(randomRGB(), randomRGB(), randomRGB());
	while (endX <= width) {
		endX = startX + (int)(Math.random() * 9);
		endY = startY + (int)(Math.random() * 18) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}

void mousePressed() {
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

int randomRGB() {
	return (int)(Math.random() * 255);
}