import 'dart:io';//This line imports the Dart standard I/O library, which provides functions for interacting with input and output
import 'dart:math';//This line imports the Dart standard math library, which provides mathematical functions and constants

//The main function is the entry point of the program. It performs the following tasks
void main() {
  stdout.write("Enter the radius of the sphere: ");//This line displays a prompt asking the user to enter the radius of the sphere. stdout.write is used to print the message without a newline character
  final radius = double.tryParse(stdin.readLineSync() ?? '');//This line reads a line of text from the user using stdin.readLineSync(). The entered text is then parsed as a double using double.tryParse(). If the input can be successfully parsed as a double, it is stored in the radius variable. If parsing fails or the input is empty, the ?? '' operator assigns an empty string to radius.

//This if statement checks if radius is not null (i.e., parsing was successful) and if it's a non-negative number.
  if (radius != null && radius >= 0) {
    final volume = (4 / 3) * pi * pow(radius, 3);//pow is a function from the dart:math library that raises the radius to the power of 3
    print("The volume of the sphere with radius $radius is ${volume.toStringAsFixed(2)} cubic units.");
  } else {
    print("Invalid input. Please enter a valid non-negative number for the radius.");
  }
}
