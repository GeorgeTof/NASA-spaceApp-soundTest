PImage img;
int w, h, i;

void setup(){
  img = loadImage("gaura-neagra.jpg");
  w = img.width;
  h = img.height;
  if( w > 1000 || h > 800){
    h = 800; //1000 * (h / w);            //TODO
    w = 1000;
  }
  size(640, 480);
  windowResize(w, h);
  i = 0;
}

void draw()
{
  if(i > w-10) {
    i = 0;
    noLoop();
  }
    
  image(img,0,0,w,h);
  
  fill(204, 102, 0);
  rect(i, 0, 10, h);
  //delay(30);
  i+=3;
    
}

// PImage img;
// img = loadImage("download.jpeg");
// image(img,0,0,w,h); - w,h -> optionale, scaleaza dinamic imaginea
// imageMode(CENTER);
// fill(204, 102, 0) -> culoarea obiectului desenat
// mouseX, mouseY
//
//
//
//
