class Perceptron {
  float[] weights = new float[2];
  float lr = 0.1;
  
  Perceptron() {
    for (int i = 0; i< weights.length; i++) {
      weights[i] = random(-1, 1);
    }
  }

  int putInLine(Person person) {
    float sum = 0;
    for(int i = 0; i < weights.length; i++){
      sum += person.waitingTime *weights[i];
    }
    int output = sign(sum);
    
    return output;
  }
  
  int sign(float n){
    if(n >= 0){
      return 1;
    }
    else{
      return -1;
    }
  }
  
  void train(float[] inputs, int target){
    int guess = guess(inputs);
    int error = target - guess;
    
    for(int i = 0; i< weights.length; i++){
       weights[i] += error * inputs[i] * lr; 
    }
    
  }
  
}