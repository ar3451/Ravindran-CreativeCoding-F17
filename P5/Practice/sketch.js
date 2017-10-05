function setup() {
    createCanvas(200, 200);
    background(255);
    noStroke();

    // draw rect in gray
    fill(192);
    rect(40, 40, 40, 40);

    // save drawing state for later
    push();

    // move the origin to the pivot point
    translate(40, 40);

    // then pivot the grid
    rotate(radians(45));

    // draw rect in black at the new origin
    fill(0);
    rect(0, 0, 40, 40)

    //revert to original drawing state
    pop();
}