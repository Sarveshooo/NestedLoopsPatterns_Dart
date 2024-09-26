import 'dart:io';

void printPattern7(int rows) {
  int num = 0;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < rows; j++) {
      stdout.write("$num ");
      num += (i + j) % 2 == 0 ? 12 : 10;
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern7(rows);
}
