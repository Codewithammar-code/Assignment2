void main() {
  int num1 = 500;
  int num2 = 750;
  int num3 = 1000;


  int largest;
  
  if (num1 >= num2 && num1 >= num3) {
    largest = num1;
  } else if (num2 >= num1 && num2 >= num3) {
    largest = num2;
  } else {
    largest = num3;
  }

  print('The largest number is $largest.');
}
