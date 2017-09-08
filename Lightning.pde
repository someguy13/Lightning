int startX = 0;
int startY = 200;
int endX = 0;
int endY = 200;

void setup()
{
  size(400,400);
  background(0);
  noLoop();
}
void draw()
{
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	while(endX < 400) {
		endX = startX + (int)(Math.random() * 10);
		endY = startY + (int)(Math.random() * 19) - 9;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
	
}
void mousePressed()
{
	startX = mouseX;
	startY = mouseY;
	endX = mouseX;
	endY = mouseY;
	redraw();
}

