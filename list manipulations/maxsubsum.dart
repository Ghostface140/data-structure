int maxSubArray(List<int> input) {
  var result = 0;
  for (int i = 0; i < input.length; i++) {
    for (int j = i + 1; j < input.length; j++) {
      result = input[i] + input[j];
    }
  }
  return result;
}

void main() {
  print(maxSubArray([2, -3, 22, 5]));
}
