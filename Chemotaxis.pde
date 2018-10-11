Bacteria[] Frida;
// Zombie Jp;  
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(1000,500);
 	// Jp = new Zombie();
 	Frida = new Bacteria[20];
 	for (int i = 0; i< Frida.length; i++)
 	{
 		Frida[i] = new Bacteria();   
 	}
 }   


 void draw()   
 {    
 	background(244, 194, 66);
 	// Jp.show();
 	// Jp.move();
 	iceCream(); 
 	for(int i=0; i < Frida.length; i++)
 	{
 		Frida[i].show();
 		Frida[i].move();
 	}

 	 
 }  


 class Bacteria    
 {     
 	int myX, myY, myColor;
 	boolean healthy = true;
 	Bacteria() //constructor
 	{
 		myX = 0;
 		myY =  250;
 		myColor = color(209, 113, 50);//orange
 		
 		// color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));		
 	}

 	void move()
 	{
 		myX = myX +(int)(Math.random()*11)-5;//adds to the randomness to not make chunks
 		myY = myY +(int)(Math.random()*11)-5;
 		
 		//make bacteria go to ice cream on right
 		myX= myX + (int)(Math.random()*5)-1;




 		// if (Jp.theirX>myX) //when mouse's x is greater than myX's make Bacteria move away to the left
 		// 	myX= myX + (int)(Math.random()*5)-3;//to the left
 		// else//when mouse's x is less than myX's make Bacteria move away to the right
 		// 	myX= myX +(int)(Math.random()*5)-1;//to the right

 		// if (Jp.theirY>myY) //when mouse's y is greater than myY, make Bacteria move up and away
 		// 	myY= myY + (int)(Math.random()*5)-3;
 		// else//when mouse's y is less than myY, make Bacteria move down and away
 		// 	myY = myY + (int)(Math.random()*5)-1;

 		// if (myX>999) 
 		// 	myX = 1;
 		// else if (myX<0) 
 		// 	myX = 999;

 		//  if (myY>500) 
 		// 	myY = 0;
 		//  else if (myY<0) 
 		// 	myY = 500;
 		// if (myY >= 500 || myY >= 0)
 		// 	myY= myY -250;
 	}

 	void show()
 	{
 		if (healthy==true) {
 			
 			fill(myColor);
 			stroke(myColor);
 			ellipse(myX,myY,20,20);
 		}

 		if (myX>=900) {
 			healthy=false;
 			tint(255, 128);

 		}

 		// if (dist(Jp.theirX,Jp.theirY,myX,myY)<10) {
 		// 	healthy=false;
 		// 	// fill(244, 194, 66);
 		// 	fill(255,0,0);
 		// }

 	}

 }    

  void iceCream()
 {

 	fill(89, 66, 0);//chocolate
 	ellipse(900,290,100,100);
 	fill(219, 162, 100);//orange
 	triangle(900, 450, 900+60, 290+15, 900-60, 290+15);
 	fill(244, 212, 129);//vanilla
 	ellipse(900,230, 100, 100);
 	fill(244, 152, 129);// pink
 	ellipse(900, 150, 100, 100);

 }

 // class Zombie
 // {
 // 	//member variable declarations
 // 	int theirX, theirY, theirColor;
 // 	//constructor:
 // 	Zombie()
 // 	{
 // 		//initialize variables here
 // 		theirX= 750;
 // 		theirY= 750;
 // 		theirColor= color(105, 142, 68);//green
 // 	}
 // 	void move()
 // 	{
 // 		//code for movements
 // 		//make zombies eat the Bacteria
 // 		theirX = theirX + (int)(Math.random()*11)-5;
 // 		theirY = theirY +(int)(Math.random()*11)-5;

 // 		// if (Frida.myX>theirX) 
 // 		// 	theirX = theirX + (int)(Math.random()*11)-2;//when Frida's X is greater (on the right of the screen), make Jp's X be more likely to go right
 // 		// else
 // 		// 	theirX = theirX + (int)(Math.random()*11)-8;//When Frida's X is more on the left side, make Jp's X be more likely to go to the left
 		
 // 		// if (Frida.myY>theirY) 
 // 		// 	theirY = theirY + (int)(Math.random()*11)-2;//when Frida's Y is greater (on the bottom of the screen), make Jp's Y be more likely to go down
 // 		// else
 // 		// 	theirY = theirY + (int)(Math.random()*11)-8;//When Frida's Y is near the top, make Jp's Y be more likely to go to the top
 // 	}

 // 	void show()
 // 	{
 // 		//code to transform the appearance of zombies
 // 		ellipse(theirX, theirY, 25, 25);
 // 		fill(theirColor);
 // 		stroke(theirColor);
 // 	}
 // }


