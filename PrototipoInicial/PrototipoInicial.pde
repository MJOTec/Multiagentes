int radio = 20;  // Radio del tractor
float x, y, velX, velY;

void setup() {
    size(800, 600);
    
    // Inicializar posición y velocidad del tractor
    x = width / 2.0;
    y = height / 2.0;
    velX = random(-5, 5);
    velY = random(-5, 5);
    
    // Color verde para el fondo
    background(0, 128, 0);
}

void draw() {
    
    // Borrar con color café el rastro del tractor
    fill(139, 69, 19);  // Color café
    ellipse(x, y, radio*2, radio*2);
    
    // Actualizar la posición del tractor
    x += velX;
    y += velY;
    
    // Revisar colisiones con los bordes y cambiar la dirección de la velocidad si es necesario
    if (x > width - radio || x < radio) {
        velX = -velX;
    }
    if (y > height - radio || y < radio) {
        velY = -velY;
    }

    // Dibujar el tractor
    fill(255);  // Color blanco
    ellipse(x, y, radio*2, radio*2);
}
