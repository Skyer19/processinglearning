//All right reserved MENGYU RAO
//2020/1/3
//FZU
//controlP5
import  controlP5.*;
//SoundFile file;
import ddf.minim.*; 
Minim   minim; 
AudioPlayer bgm;
ControlP5   cp5;
PImage sun, pic1, pic2, pic3, pic4, pic5, pic6, pic7, pic8, moon, universe, un1, un2, un3, un4;//Declare the variable of the pictures
float x0=450, x1=450, x2=450, x3=0, x4=0, x5=5, x6=0, x7=7, x8=0, x9=0;//Declare the variable of the pictures
float y0=450, y1=450, y2=450, y3=400, y4=400, y5=400, y6=400, y7=400, y8=400, y9=0;//Declare the variable of X in coordinate
float r1=30, r2=50, r3=70, r4=100, r5=130, r6=160, r7=180, r8=200;//Declare the variable of Y in coordinate
float a1=0, a2=0.0, a3=0, a4=0, a5=0, a6=0, a7=0, a8=0, a9=0;//Declare the variable of the angular velocity of revolution
float angle0=1, angle1=0.1, angle2=0.1, angle3=0.1, angle4=0.1, angle5=0.1, angle6=0.1, angle7=0.1, angle8=0.1, angle9=0;//Declare the variable of rotation speed
float a=2.5, b=1.25, c=0.5, d=0.5, e=0.43, f=0.33, g=0.2, h=0.1;//Declare the variable ofthe change of the angular velocity of revolution
boolean start0=false;
boolean change0=false;
boolean pic11=false, pic22=false, pic33=false, pic44=false;
void setup() 
{
  size(900, 900);
  background(0);
  // Load a soundfile from the data folder of the sketch and play it back in a loop
  minim = new Minim(this); 
  bgm = minim.loadFile("Stars.mp3"); // load the music file into memory
  bgm.play(); // play the file on a loop
  sun = loadImage("sun1png.png");// load sun image and data into scene data structure
  pic1 = loadImage("sx.png");// load earth image and data into scene data structure//Mercury
  pic2 = loadImage("jx.png");// load earth image and data into scene data structure//Venus
  pic3 = loadImage("dq.png");// load earth image and data into scene data structure//Earth
  pic4 = loadImage("hx.png");// load earth image and data into scene data structure//Mars
  pic5 = loadImage("mx.png");// load earth image and data into scene data structure//Jupiter
  pic6 = loadImage("tx.png");// load earth image and data into scene data structure//Saturn
  pic7 = loadImage("twx.png");// load earth image and data into scene data structure//Uranus
  pic8 = loadImage("hwx.png");// load earth image and data into scene data structure//Neptune
  moon = loadImage("yq.png");// load earth image and data into scene data structure//moon
  un1 = loadImage("1.bmp");// load earth image and data into scene data structure//universe picture one
  un2 = loadImage("2.bmp");// load earth image and data into scene data structure//universe picture two
  un3 = loadImage("3.bmp");// load earth image and data into scene data structure//universe picture three
  un4 = loadImage("4.bmp");// load earth image and data into scene data structure//universe picture four
  universe = loadImage("universe.bmp");// load earth image and data into scene data structure//universe picture for the background
  cp5 = new ControlP5(this);
  
  //button start
  cp5.addToggle("start")
    .setPosition(50, 50)
    .setSize(50, 30)
    .setValue(false)
    .setMode(ControlP5.SWITCH)
    ;
    
    //button change
  cp5.addToggle("change")
    .setPosition(130, 50)
    .setSize(50, 30)
    .setValue(true)
    .setMode(ControlP5.SWITCH)
    ;
}

void draw() 
{
  background(0);
  if (change0==true) {
    if (start0==true) {
      textSize(30); 
      fill(120, 120, 120); 
      text("Solar System", 650, 100);
      textSize(20); 
      fill(255, 255, 255); 
      fill(122, 50, 122);
      text("You can touch any plants:", 20, 160);
      strokeWeight(0.3); // Width 
      stroke(128, 122, 255); // Colour, RGB 
      noFill();
      //orbital
      ellipse(450, 450, 120, 78);//orbital for Mercury,Semimajor axis is 60
      ellipse(450, 450, 200, 130);//orbital for Venus,Semimajor axis is 100
      ellipse(450, 450, 280, 210);//orbital for earth,Semimajor axis is 140
      ellipse(450, 450, 400, 300);//orbital for Mars,Semimajor axis is 200
      ellipse(450, 450, 520, 442);//orbital for Jupiter,Semimajor axis is 260
      ellipse(450, 450, 640, 544);//orbital for Saturn,Semimajor axis is 320
      ellipse(450, 450, 720, 648);//orbital for Uranus,Semimajor axis is 360
      ellipse(450, 450, 800, 720);//orbital for Neptune,Semimajor axis is 400
      
      //draw stars
      fill(255); // Random stars
      ellipse(random(900), random(900), 3, 3); // Draw stars 1
      ellipse(random(900), random(900), 3, 3); // Draw stars 2
      ellipse(random(900), random(900), 3, 3); // Draw stars 3
      ellipse(random(900), random(900), 3, 3); // Draw stars 4
      ellipse(random(900), random(900), 3, 3); // Draw stars 5
      ellipse(random(900), random(900), 3, 3); // Draw stars 6
     
      //sun  0
      angle0 +=0.1;//angular velocity 
      pushMatrix();
      translate(x0, y0);
      rotate(angle0);//angular rotation velocity
      image(sun, -15, -14, 30, 28);
      popMatrix();
      //print information for the sun
      if (abs(mouseX-x0)<5&&abs(mouseY-y0)<5) {
        textSize(20); 
        fill(255, 255, 255); 
        text("This is sun:", 120, 270);
        text("The sun is the central body of the solar system.", 240, 270);
        text(" Eight of the solar system's planets, asteroids", 250, 290);
        text("meteors,comets, trans-neptunian objects and ", 250, 310);
        text("interstellar dust orbit the sun, which orbits the center of the Milky Way.", 140, 330);
        angle0 +=0.1;
        pushMatrix();
        translate(x0, y0);
        rotate(angle0);
        image(sun, -15, -14, 30, 28);
        scale(8.0);
        image(sun, -15, -14, 30, 28);
        popMatrix();
      }

      //Mercury   1
      x1 = 450 + 2*r1 * cos (radians(a1));   // T=0.4year
      y1 = 450 +1.3*r1 * sin (radians(a1));
      angle1 += 0.01;//angular velocity around the sun
      pushMatrix();
      translate(x1, y1);
      rotate(angle1);//angular rotation velocity
      image(pic1, -3, -3, 6, 6);
      popMatrix();
      //print information for the Mercury
      if (abs(mouseX-x1)<15&&abs(mouseY-y1)<15) {
        textSize(20); 
        fill(255, 255, 255); 
        text("This is sun:", 100, 70);
        text("   Mercury is an earth-like planet", 270, 270);
        text(" and because it is so close to the sun,", 270, 290);
        text("it appears only in the early morning hours as a backup star,", 180, 310);
        text(".Mercury is usually invisible from the sun unless there is an eclipse.", 140, 330);
        pushMatrix();
        translate(x1, y1);
        rotate(angle1);
        image(pic1, -3, -3, 6, 6);
        scale(10.0);
        image(pic1, -3, -3, 6, 6);
        popMatrix(); 
        a1=a1+0;//change angular velocity around the sun
      } else {
        a1=a1+a;//change angular velocity around the sun
      }
      
      //Venus   2
      x2 = 450 + 2*r2 * cos (radians(a2));//T=0.8year
      y2 = 450 + 1.3*r2 * sin (radians(a2));
      //a2=a2+1.25;//angular velocity around the sun
      angle2 -= 0.01;//angular rotation velocity
      pushMatrix();
      translate(x2, y2);
      rotate(angle3);
      image(pic2, -5, -5, 10, 10);
      popMatrix();
      //print information for the Venus
      if (abs(mouseX-x2)<30&&abs(mouseY-y2)<30) {
        textSize(20); 
        fill(255, 255, 255); 
        text("This is Venus!", 400, 70);
        text("The night sky is second only to the moon in brightness,", 160, 270);
        text("and Venus reaches its maximum brightness just before sunrise or just after sunset", 40, 290);
        text("It appeared early in the morning in the eastern sky, known as 'qiming'", 120, 310);
        text("Evening in the west side of the sky, known as 'chang geng.'", 140, 330);
        a2=a2+0.5;//change angular velocity around the sun
      } else {
        a2=a2+b;//change angular velocity around the sun
      }
      
      //earth   3
      x3 = 450 + 2*r3 * cos (radians(a3));  // T=1year
      y3 = 450 + 1.5*r3 * sin (radians(a3));
      a3=a3+0.5;//angular velocity around the sun
      image(pic3, x3, y3, 13, 13);
      //popMatrix();
      //moon
      a9=a9+5;
      x9 = x3 + 25* cos (radians(a9));  
      y9 = y3 +25*sin (radians(a9));   
      angle9 +=0.5;
      image(moon, x9, y9, 10, 10);
      pushMatrix();
      translate(-y9, -y9);
      rotate(angle9);
      popMatrix();
      //print information for the earth
      if (abs(mouseX-x3)<30&&abs(mouseY-y3)<30) {
        textSize(30); 
        fill(255, 255, 255); 
        text("This is Earth!", 370, 70);
        textSize(40); 
        fill(255, 255, 0); 
        text("It is our home ,so I know you know!", 110, 270);
        a3=a3+0;//change angular velocity around the sun
      } else {
        a3=a3+c;//change angular velocity around the sun
      }

      // //Mars    4
      x4 = 450 + 2*r4 * cos (radians(a4));    //T=2years
      y4 = 450 + 1.5*r4 * sin (radians(a4));
      a4=a4+0.5;//angular velocity around the sun
      angle4 += 0.01;//angular rotation velocity
      pushMatrix();
      translate(x4, y4);
      rotate(angle4);
      image(pic4, -4.5, -4.5, 9, 9);
      popMatrix();
      //print information for the Mars
      if (abs(mouseX-x4)<30&&abs(mouseY-y4)<30) {
        textSize(40); 
        fill(255, 255, 255); 
        text("This is Mars!", 350, 70);
        a4=a4+0;//change angular velocity around the sun
      } else {
        a4=a4+d;//change angular velocity around the sun
      }
      
      //Jupiter    5
      x5 = 450 + 2*r5 * cos (radians(a5));     //T=12years
      y5 = 450 + 1.7*r5 * sin (radians(a5));
      a5=a5+0.43;//angular velocity around the sun
      angle5 += 0.01;//angular rotation velocity
      //z2 += 10;
      pushMatrix();
      translate(x5, y5);
      rotate(angle5);
      image(pic5, -10, -10, 20, 20);
      popMatrix();
      //print information for the Jupiter
      if (abs(mouseX-x5)<30&&abs(mouseY-y5)<30) {
        textSize(40); 
        fill(255, 255, 255); 
        text("This is Jupiter!", 350, 70);
        a5=a5+0;//change angular velocity around the sun
      } else {
        a5=a5+e;//change angular velocity around the sun
      }
      
      //Saturn    6
      x6 = 450 + 2*r6 * cos (radians(a6));   // T=30years
      y6 = 450 + 1.7*r6 * sin (radians(a6));
      a6=a6+0.33;//angular velocity around the sun
      angle6 += 0.01;//angular rotation velocity
      //z2 += 10;
      pushMatrix();
      translate(x6, y6);
      rotate(angle6);//angular rotation velocity
      image(pic6, -13.5, -9, 27, 18);
      popMatrix();
      //print information for the Saturn
      if (abs(mouseX-x6)<30&&abs(mouseY-y6)<30) {
        textSize(40); 
        fill(255, 255, 255); 
        text("This is Saturn!", 350, 70);
        a6=a6+0;//change angular velocity around the sun
      } else {
        a6=a6+f;//change angular velocity around the sun
      }
      
      //Uranus    7
      x7 = 450 + 2*r7 * cos (radians(a7));   //T=84years
      y7 = 450 + 1.8*r7 * sin (radians(a7));
      a7=a7+0.2;//angular velocity around the sun
      angle7 -= 0.001;//angular rotation velocity
      pushMatrix();
      translate(x7, y7);
      rotate(angle7);
      image(pic7, -8, -8, 16, 16);
      popMatrix();
      //print information for the Uranus
      if (abs(mouseX-x7)<30&&abs(mouseY-y7)<30) {
        textSize(40); 
        fill(255, 255, 255); 
        text("This is Uranus!", 350, 70);
        a7=a7+0;//change angular velocity around the sun
      } else {
        a7=a7+g;//change angular velocity around the sun
      }
      
      //Neptune     8
      x8 = 450 + 2*r8 * cos (radians(a8));    //T=165years
      y8 = 450 + 1.8*r8 * sin (radians(a8));
      a8=a8+0.1;//angular velocity around the sun
      angle8 += 0.001;//angular rotation velocity
      pushMatrix();
      translate(x8, y8);
      rotate(angle8);
      image(pic8, -7, -7, 14, 14);
      popMatrix();
      //print information for the Neptune
      if (abs(mouseX-x8)<30&&abs(mouseY-y8)<30) {
        textSize(40); 
        fill(255, 255, 255); 
        text("This is Neptune!", 300, 70);
        a8=a8+0;//change angular velocity around the sun
      } else {
        a8=a8+h;//change angular velocity around the sun
      }
    } else{ 
      //print some information for the welocme Act 
      textSize(50); 
      fill(0, 0, 255); 
      text("Hello Human!", 280, 310);
      fill(255, 255, 255); 
      text("   Let's Explore ", frameCount, 380);
      text("  The Mysteries ", frameCount, 450);
      text(" Of The Unrseive", frameCount, 520);
      textSize(72); 
      text("OK", 400, 600);
      textSize(20); 
      fill(255, 0, 255); 
      text("please touch the button", 200, 70);
    }
  } else { 
    //print some information for the third Act
    image(universe, 50, 50, 800, 800);
    textSize(50); 
    fill(255, 255, 0); 
    text("Hello man!", 310, 100);
    textSize(25); 
    text("There are some pictures about the universe", 180, 150);
    text("Let us enjoy them now", 290, 185);
    fill(255, 0, 0);
    textSize(50); 

    //show for the pictures
    // pic11
    if (pic11 == true) {
      image(un1, 100, 200);
    } else {
      pic11 = false;
    }
    // pic22
    if (pic22 == true) {
      image(un2, 400, 200, 400, 200);
    } else {
      pic22 = false;
    }  
    // pic33
    if (pic33 == true) {
      image(un3, 120, 450, 400, 300);
    } else {
      pic33 = false;
    }
    // pic44
    if (pic44 == true) {
      image(un4, 450, 450, 400, 300);
    } else 
    {
      pic44 = false;
    }
  }
}
//ControlP5 button 'start'
void start (boolean a) {
  if (a==true) {
    start0=true;
  } else {
    start0=false;
  }
}
//ControlP5 button 'change'
void change (boolean b) {
  if (b==true) {
    change0=true;
  } else {
    change0=false;
    pic11=false;
    pic33=false;
    pic22=false;
    pic44=false;
  }
}
//control for the four pictures
void mousePressed()
{
  if (mouseX< 0.5*width ) {
    if (mouseY< 0.5*height&&mouseY>=101 ) {
      pic11 = true;
      //d1.trigger();
    } else if ((mouseY>= 0.5*height))
    {
      pic33 = true;
      //d3.trigger();
    }
  } else { 
    if (mouseY> 0.5*height ) {
      pic44 = true;
    } else {
      pic22 = true;
    }
  }
}
