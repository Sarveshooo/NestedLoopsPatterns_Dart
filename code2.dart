import 'dart:io';

void printPattern2(int rows) {
  for (int i = rows; i >= 1; i--) {
    for (int j = i; j <= rows * i; j += rows) {
      stdout.write("$j ");
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern2(rows);
}
