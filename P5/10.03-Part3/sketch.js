function setup() {
    createCanvas(600, 600);

}

function draw() {
    background(255);

    var boxRotation = map(mouseX, 0, width, 0, 2 * PI);

    for (var i = 0; i < 1; i += 1) {
        push();
        fill(0, 0, 255);
        translate(50, height / 2);
        rotate(boxRotation * PI * (i + 3));
        rect(0, 0, 50, 50);

        pop();

        push();
        fill(255, 0, 0);
        translate(150, height / 2);
        rotate(boxRotation * PI * (i + 12));
        rect(0, 0, 50, 50);

        pop();

        push();
        fill(0, 255, 0);
        translate(250, height / 2);
        rotate(boxRotation * PI * (i + 25));
        rect(0, 0, 50, 50);

        pop();
    }

}