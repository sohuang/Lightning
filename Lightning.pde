int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int randomStroke;

void setup() {
  size(300,300);
  background(0);

}

void draw() {
	strokeWeight(1);
	stroke(randomRGB(), randomRGB(), randomRGB());
	noFill();
	rect(0, 0, width - 1, height - 1);
	// save("lightning.png");
}

void mousePressed() {
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
	drawLightning();
}

int randomRGB() {
	return (int)(Math.random() * 255);
}

void drawLightning() {
	stroke(randomRGB(), randomRGB(), randomRGB());
	randomStroke = (int)(Math.random() * 3);
	strokeWeight(randomStroke);
	while (endX <= width) {
		endX = startX + (int)(Math.random() * 9);
		endY = startY + (int)(Math.random() * 18) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}