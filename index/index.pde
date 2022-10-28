String[] computerOptions = {"paper", "rock", "scissors"};

void setup() {
    size(600, 340);  
    textSize(40);
    fill(0);
    background(255);
    text("Please select your option:", 40, 40); 
    PImage pImagePaper;
    PImage pImageRock;
    PImage pImageScissors;
    pImagePaper = loadImage("paper.png");
    pImageRock = loadImage("rock.png");
    pImageScissors = loadImage("scissors.png");
    image(pImagePaper, 80, 100);
    image(pImageRock, 240, 100);
    image(pImageScissors, 400, 100);
    stroke(255);
}

void draw() {
}

void writeComputerChoice(String computerSelection) {
    text("Computer selected: " + computerSelection, 40, 270);   
}

void writeWinner(String winner) {
    text("Winner is: " + winner, 40, 320);   
}

void evaluate(String userChoice) {
  String computerChoice = getComputerChoice();
  if ((userChoice == "paper" && computerChoice == "rock") || (userChoice == "rock" && computerChoice == "scissors") || (userChoice == "scissors" && computerChoice == "paper")) {
    writeWinner("user (you)");
  } else if (userChoice == computerChoice) {
    writeWinner("draw");
  } else {
    writeWinner("computer");
  }
  writeComputerChoice(computerChoice);
}

void mouseClicked() {
  clearResultArea();
  // click in paper image
  if ((mouseX >= 80 && mouseX <= 180) && (mouseY >= 40 && mouseY <= 200)) {
    evaluate("paper");
  } else if ((mouseX >= 240 && mouseX <= 340) && (mouseY >= 40 && mouseY <= 200)) {
    evaluate("rock"); 
  } else if ((mouseX >= 400 && mouseX <= 500) && (mouseY >= 40 && mouseY <= 200)) {
    evaluate("scissors");
  }
  // click in rock image
  // click in scissors image
}

void clearResultArea() {
  fill(255);
  rect(40,220, 550, 110); 
  fill(0);
}

String getComputerChoice() {
  int randomComputerChoice = floor(random(3)); 
  return computerOptions[randomComputerChoice];
}
