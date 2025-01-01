import 'dart:io';

void triangle() {
  print('Enter The base of the Triangle');
  double base = double.parse(stdin.readLineSync()!); // for user input

  print('Enter the height of the triangle');
  double height = double.parse(stdin.readLineSync()!); // for user input

  double area = 0.5 * base * height; // Calculate
  print('The area of the triangle is: $area');
}

void main() {
  triangle();
}
