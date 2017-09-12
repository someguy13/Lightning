int startX,startY,endX,endY,startX2,startY2,endX2,endY2;
Boolean right = true;
Boolean left = true;


void setup()
{
  size(400,400);
  frameRate(10);
}
void draw(){

	background(0);
	startX = 0;
	startY = 200;
	endX = 0;
	endY = 200;
	startX2 = 400;
	startY2 = 200;
	endX2 = 400;
	endY2 = 200;

	fill(255,0,0);
	stroke(0);
	ellipse(100,300,20,20);
	ellipse(300,300,20,20);

	strokeWeight(5);
	if(left == true){
		while(endX < 200){
			stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			endX = startX + (int)(Math.random() * 10);
			endY = startY + (int)(Math.random() * 10) - 5;
			line(startX,startY,endX,endY);
			startX = endX;
			startY = endY;
		}
	}

	if(right == true) {
		while(endX2 > 200){
			stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			endX2 = startX2 - (int)(Math.random() * 10);
			endY2 = startY2 + (int)(Math.random() * 10) - 5;
			line(startX2,startY2,endX2,endY2);
			startX2 = endX2;
			startY2 = endY2;
		}
	}


	if(endX > endX2) {
		for(int size = 10; size < 100; size = size + 1){
			fill(255,255,255,10);
			ellipse(200,200,size,size);
		}
	}
	
}
void mousePressed()
{
	if(mouseX < 310 && mouseX > 290 && mouseY < 310 && mouseY > 290 && right == true){
		right = false;
	}
	else if(mouseX < 310 && mouseX > 290 && mouseY < 310 && mouseY > 290 && right == false){
		right = true;
	
	}
	else if(mouseX < 110 && mouseX > 90 && mouseY < 310 && mouseY > 290 && left == true){
		left = false;
	}
	else if(mouseX < 110 && mouseX > 90 && mouseY < 310 && mouseY > 290 && left == false){
		left = true;
	}

}

