//Angus Liu
//Texture
//jan 12

float rotx, roty;
PImage lava, diamond, lava_top, lava_side, pumpkin, pumpkin_top, pumpkin_side;


void setup () {

  size (800, 800, P3D);
  diamond= loadImage ("MicrosoftTeams-image (1).png");
  lava= loadImage ("img.png");
  lava_side= loadImage ("imgs.png");
  lava_top= loadImage ("imgss.png");
  pumpkin= loadImage ("imgg.png");
  pumpkin_top= loadImage ("imggg.png");
  pumpkin_side= loadImage ("imgggg.png");
  textureMode(NORMAL);
}




void draw () {
  background (0);
  texturedCube   (100, height/2, 0, lava, 200);
  texturedCube   (width/2, height/2, 0, diamond, 200);
  texturedCube (width/2, 100, 0, lava_top, lava_side, lava, 100);
  texturedCube (100, 100, 0, pumpkin_top, pumpkin_side, pumpkin, 100);
}

void texturedCube (float x, float y, float z, PImage texture, float size ) {

  pushMatrix ();
  translate (x, y, z);
  scale (size);
  rotateX(rotx);
  rotateY(roty);

  noStroke ();

  beginShape (QUADS);
  texture (texture);

  //top
  //x, y, z, texturex, texturey
  vertex(0, 0, 0, 0, 0 );
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);




  //bottom
  vertex(0, 1, 0, 0, 0 );
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);



  //front 1
  vertex (0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);



  //back
  vertex (0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);


  //left
  vertex (0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //right
  vertex (1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);
  endShape();
  popMatrix ();
}



void texturedCube (float x, float y, float z, PImage top, PImage side, PImage bottom, float size ) {

  pushMatrix ();
  translate (x, y, z);
  scale (size);
  rotateX(rotx);
  rotateY(roty);

  noStroke ();

  beginShape (QUADS);
  texture (top);

  //top
  //x, y, z, texturex, texturey
  vertex(0, 0, 0, 0, 0 );
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  endShape ();

  beginShape(QUADS);
  texture(bottom);


  //bottom
  vertex(0, 1, 0, 0, 0 );
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  endShape ();
  beginShape (QUADS);
  texture (side);


  //front
  vertex (0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);



  //back
  vertex (0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);


  //left
  vertex (0, 0, 0, 0, 0);
  vertex(0, 0, 1, 1, 0);
  vertex(0, 1, 1, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //right
  vertex (1, 0, 0, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(1, 1, 0, 0, 1);
  endShape();
  popMatrix ();
}


void mouseDragged () {

  rotx= rotx+ (pmouseY - mouseY ) *0.01;
  roty= roty+ (pmouseX-mouseX) * -0.01;
}
