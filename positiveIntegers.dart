import 'dart:io';

void main() {
  int sum = 0;
  int count = 1; // Initialize a counter for the entered numbers.

  while (true) {
    stdout.write('Enter number $count (or type "add" to stop): ');
    String input = stdin.readLineSync() ?? '';//This line reads a line of input from the user using stdin.readLineSync(). The input is stored in the input variable as a string. If the user enters nothing (e.g., presses Enter), it defaults to an empty string.

    if (input.toLowerCase() == 'add') {
      break; // Exit the loop if the user types "add."
    }

    int number;

//This block of code attempts to parse the input string as an integer using int.parse(input). If successful, it stores the parsed integer in the number variable. If there's an error during parsing (e.g., if the user enters a non-numeric value), it catches the error and sets number to 0.
    try {
      number = int.parse(input);
    } catch (e) {
      number = 0; // Set number to 0 on parsing error.
    }

    sum += number;
    count++;
  }

  print('Sum of the entered numbers: $sum');
}
