function setup() {
    createCanvas(600, 600);
    background(238, 232, 170);
}

function draw() {
    fill(0);
    rect(62.5, 50, 450, 30);

    for (i = 10; i < 90; i += 10) {
        fill(0);
        rect((6.25 * i), 50, 30, 250);
    }

    for (i = 62.5; i < 520; i += 437.5) {
        fill(0);
        rect(i, 300, 30, 255);
    }

    for (i = 300; i < 590; i += 75) {
        fill(0);
        rect(62.5, i, 467.5, 30);
    }
}