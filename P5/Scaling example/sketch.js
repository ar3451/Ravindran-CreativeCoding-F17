function setup() {
    createCanvas(600, 600);

}

function draw() {
    createShape();
}

function createShape() {
    push();
    fill(71, 140, 177);
    translate(width * 0.8, height * 0.5);
    rotate(frameCount / -100.0);
    star(0, 0, 30, 70, 5);
    pop();
}

function star(x, y, radius1, radius2, npoints) {
    var angle = TWO_PI / npoints;
    var halfAngle = angle / 2.0;
    beginShape();
    for (var a = 0; a < TWO_PI; a += angle) {
        var sx = x + cos(a) * radius2;
        var sy = y + sin(a) * radius2;
        vertex(sx, sy);
        sx = x + cos(a + halfAngle) * radius1;
        sy = y + sin(a + halfAngle) * radius1;
        vertex(sx, sy);
    }
    endShape(CLOSE);
}