import 'dart:io';

void main() {
  var a = 15;
  var b = 22;

  print("Before swap:a=${a} && b=${b}");
  a = a + b;
  b = a - b;
  a = a - b;
  print("After swap:a=${a} && b=${b}");
}
