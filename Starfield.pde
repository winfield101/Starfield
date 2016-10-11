Particle[] bob;

void setup()

{ size(1000,1000);

 bob = new Particle[200];



 for(int i= 0; i < bob.length; i++)

{

bob[i] = new NormalParticle();

}

bob[0]= new OddballParticle();

bob[1] = new JumboParticle();

}

void draw()

{

 background(0);

 for(int i= 0; i < bob.length; i++)

{



 bob[i].move();

 bob[i].show();

}

}
void mousePressed()
{	
	setup();

	redraw();


	
}

class NormalParticle implements Particle

{

double myX, myY,particleAngle, particleSpeed,particleSize;

NormalParticle()

{

 myX =500.0;

 myY =500.0;

 particleAngle = (Math.random()*(2*Math.PI));

 particleSpeed = (Math.random()*10);

 particleSize = (Math.random()*10);

}

public void move()

{ 

 myX = myX + Math.cos(particleAngle)*particleSpeed;

 myY = myY + Math.sin(particleAngle)*particleSpeed;

 particleAngle = particleAngle + 1;

 particleSpeed = particleSpeed + 1;


}

public void show()

{ fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

ellipse((float)myX,(float)myY,(int)particleSize,(int)particleSize);

}

}

class OddballParticle implements Particle

{

double myX2, myY2, oPAngle, oPSpeed,oPSize;

OddballParticle()

{

 myX2 =500.0;

 myY2 =500.0;

 oPAngle = (Math.random()*(2*Math.PI));

 oPSpeed = (Math.random()*100);

 oPSize = 50;

}

public void move()

{ 

 myX2 = myX2 + Math.sin(oPAngle)*oPSpeed;

 myY2 = myY2 + Math.cos(oPAngle)*oPSpeed;

 oPAngle = oPAngle + 1;

 oPSpeed = oPSpeed + 1;


}

public void show()

{  

 fill(255,0,0);

 ellipse((float)myX2,(float)myY2,(int)oPSize,(int)oPSize);

}

}




class JumboParticle extends NormalParticle

{  



 void show()

  { 

   fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

   ellipse((float)myX,(float)myY,100,100);



  }

}

interface Particle

{

 public void move();

 public void show();

}
