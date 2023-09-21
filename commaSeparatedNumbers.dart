import 'dart:io';

void main() {
  // Prompt the user for input
  print('Enter a sequence of numbers enclosed in square brackets (e.g., [1,2,3,4]):');
  String input = '';
  try {
    input = stdin.readLineSync() ?? '';
  } catch (e) {
    print('Error reading input: $e');
    return;
  }

  // Remove any whitespace and square brackets from the input
  input = input.replaceAll('[', '').replaceAll(']', '').trim();

  // Split the input into a list of strings
  List<String> numberStrings = input.split(',');

  // Parse the strings into integers and store them in a list
  List<int> numbers = [];
  for (String numberString in numberStrings) {
    try {
      int number = int.parse(numberString.trim());
      numbers.add(number);
    } catch (e) {
      print('Invalid input: $numberString');
    }
  }

  // Display the List
  print('List of numbers: $numbers');
}
