import 'dart:math';
import 'dart:io';

void main() {
  var random = Random();
  print('Enter a number between 0 and 9:');
  int num = int.parse(stdin.readLineSync()!);
  
  int randomNumber = random.nextInt(10);  
  print('You entered: $num');
  print('Random number: $randomNumber');
  
  if (num == randomNumber) {
    print('Yes, you win the game!');
  } else {
    print('Oops, try again.');
  }
}

