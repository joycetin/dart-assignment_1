import 'package:intl/intl.dart';
import 'dart:io';

void main() {
  // Input month and year (you can change these values)
  int year = 1998;
  int month = 11; // September (1 to 12)

  // Create a DateTime object for the first day of the specified month and year
  DateTime firstDay = DateTime(year, month, 1);

  // Get the name of the month
  String monthName = DateFormat('MMMM').format(firstDay);

  // Print the calendar header
  print('$monthName $year');
  print('Mo Tu We Th Fr Sa Su');

  // Calculate the day of the week for the first day of the month (0 = Sunday, 1 = Monday, ..., 6 = Saturday)
  int firstDayOfWeek = firstDay.weekday;

  // Calculate the number of days in the month
  int numDaysInMonth = DateTime(year, month + 1, 0).day;

  // Initialize a counter for the day
  int day = 1;

  // Print the calendar
  for (int row = 0; row < 6; row++) {
    for (int col = 0; col < 7; col++) {
      if (row == 0 && col < firstDayOfWeek) {
        // Print empty spaces for days before the first day of the month
        stdout.write('   ');
      } else if (day <= numDaysInMonth) {
        // Print the day with proper padding
        stdout.write('${day.toString().padLeft(2)} ');
        day++;
      } else {
        // Print empty spaces for days after the end of the month
        stdout.write('   ');
      }
    }
    print(''); // Start a new line for the next row
  }
}
