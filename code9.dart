import 'dart:io';

void printPattern9(int rows) {
  int num = 1;
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      if (i == 3 && j == 3) {
        num += 2; 
      }
      stdout.write("$num ");
      num++;
    }
    print("");
  }
}

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  printPattern9(rows);
}
