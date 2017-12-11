Perceptron perc;

Person[] persons = new Person[20];
ArrayList<Person> waitingLine = new ArrayList<Person>();
Person[] waitingLine1 = new Person[100];
Person[] waitingLine2 = new Person[100];

void setup() {
  size(800, 800);
  perc = new Perceptron();

  for (int i = 0; i < persons.length; i++) {
    persons[i] = new Person();
  }
}

void draw() {
  putInQueue();
}

void putInQueue() {

  for (Person ps : persons) {
    int guess = perc.putInLine(ps);
    
    //float[] inputs = {pt.x, pt.y};
    //int target = pt.label;
    //int guess = perc.guess(inputs);

  }
}

void mousePressed(){
 train(); 
}

void train() {
  for (Person ps : persons) {
    int target = pt.label;
    perc.train(inputs, target);
  }
}