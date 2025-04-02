import 'dart:io';

void main(List<String> args) {
  try {
    if (int.parse(stdin.readLineSync()!) > 4) throw 'invalid number';
  } catch (e) {
    print(e);
  }
}
