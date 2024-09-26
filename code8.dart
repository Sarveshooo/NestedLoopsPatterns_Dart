import 'dart:io';

void printPattern8(int rows) {
  int num = 1;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < rows; j++) {
      stdout.write("$num ");
      num++;
      if (i % 2 == 1 && j == 0) num++;
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern8(rows);
}
