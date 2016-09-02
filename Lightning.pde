PFont slkscr;

int numLines;
int thisLine;

int startX = 0;
int startY;
int endX = 0;
int endY = 150;
int randomStroke;

void setup() {
	size(300, 300);
	background(0);
	slkscr = createFont("slkscr-webfont.ttf", 12);
	// paper
	noStroke();
	fill(255);
	rect(75, 50, 150, 200);
	// lines
	numLines = ((190) / 8);
	for (int i = 1; i < numLines; i++) {
		PaperLine thisLine = new PaperLine(i);
		thisLine.drawLine();
	}
	// margin
	stroke(200, 30, 80);
	line(95, 50, 95, 249);
	stroke(200, 30, 80, 75);
	line(205, 50, 205, 249);
	// text
	fill(0);
	textFont(slkscr);
	text("Essay", 130, 75);
}

void draw() {
	// border
	strokeWeight(1);
	stroke(randomRGB(), randomRGB(), randomRGB());
	noFill();
	rect(0, 0, width - 1, height - 1);
	// bg
	badRect();
	// paper holes
	fill(0);
	noStroke();
	ellipse(85, 72.5, 5, 5);
	ellipse(85, 150, 5, 5);
	ellipse(85, 227.5, 5, 5);
}

void badRect() {
	fill(0);
	noStroke();
	rect(0, 0, 75, height);
	rect(225, 0, 75, height);
	rect(0, 0, width, 50);
	rect(0, 250, width, 50);
}

class PaperLine {
	int myY;
	int number;
	PaperLine(int lineN) {
		number = lineN;
		myY = 75 + (8 * (lineN - 1));
	}
	void drawLine() {
		stroke(50, 100, 200);
		line(75, myY, 224, myY);
	}
}

void mousePressed() {
	startX = 75;
	startY = mouseY;
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
	while (endX < 224) {
		endX = startX + (int)(Math.random() * 9);
		endY = startY + (int)(Math.random() * 18) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}