float diaSun;
float theta;
// Earth 
float diaEarth; // earth diameter
float eor, ex, ey; // earth orbit radius and x and y location
// Moon 
float diaMoon; //  moon diameter 
float mor, mx, my; // moon x and y and moon's orbiting radius 
// Mars 
float diaMars;  
float mars_or, mars_x, mars_y; // mars x and y and orbiting radius 
// Jupiter
float diaJupiter; 
float jor, jx, jy; // jup's x and y and orbiting radius 
// Saturn
float diaSaturn; 
float sor, sx, sy; // sat's x and y and orbiting radius 
// Uranus 
float diaUranus; 
float uor, ux, uy; // uran's x and y and orbiting radius
// Neptune
float diaNeptune;
float nor, nx, ny; // nept's x and y and orbiting radius
void setup() {
  size(800, 800);
  diaSun = 100;
  theta = 0;
  // Earth 
  diaEarth = 20;
  eor = 100;

  // Moon 
  diaMoon = 10;
  mor = 25;

  // Mars 
  diaMars = 25;
  mars_or = 155;

  // Jupiter
  diaJupiter = 50;
  jor = 200;

  // Saturn
  diaSaturn = 40;
  sor = 250;

  //Uranus 
  diaUranus = 35;
  uor = 300;
  // Neptune
  diaNeptune = 30;
  nor = 350;
}

void draw() {
  background(0);
  //Sun
  fill(255, 255, 0);
  noStroke();
  ellipse(width/2, height/2, diaSun, diaSun);
  //Earth
  fill(50, 150, 200);
  ex = eor*cos(radians(5*theta)) + width/2;
  ey = eor*sin(radians(5*theta)) + height/2;
  ellipse( ex, ey, diaEarth, diaEarth);
  theta++;
  //Moon
  fill(150);
  mx = mor*cos(radians(3*theta)) + ex;
  my = mor*sin(radians(3*theta)) + ey;
  ellipse(mx, my, diaMoon, diaMoon);
  // Mars
  fill(231, 125, 17);
  mars_x = mars_or*cos(radians(4*theta)) + width/2;
  mars_y = mars_or*sin(radians(4*theta)) + height/2;
  ellipse(mars_x, mars_y, diaMars, diaMars);
  // Jupiter
  fill(227, 220, 203);
  jx = jor*cos(radians(3*theta)) + width/2;
  jy = jor*sin(radians(3*theta)) + height/2;
  ellipse(jx, jy, diaJupiter, diaJupiter);
  // Saturn
  fill(234, 214, 184);
  sx = sor*cos(radians(2*theta)) + width/2;
  sy = sor*sin(radians(2*theta)) + height/2;
  ellipse(sx, sy, diaSaturn, diaSaturn);
  // Uranus
  fill(209, 231, 231);
  ux = uor*cos(radians(theta)) + width/2;
  uy = uor*sin(radians(theta)) + height/2;
  ellipse(ux, uy, diaUranus, diaUranus);
  //Neptune
  fill(39, 70, 135);
  nx = nor*cos(radians(theta)) + width/2;
  ny = nor*sin(radians(theta)) + height/2;
  ellipse(nx, ny, diaNeptune, diaNeptune);
}
