Set dulplicate(List<int> numbers) {
  Set<int> duplicate = {};
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        duplicate.add(numbers[i]);
      }
    }
  }
  return duplicate;
}

void main() {
  print(dulplicate([1, 2, 3, 4, 7, 2, 8]));
}
