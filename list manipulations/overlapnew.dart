List intervals(List<List<int>> numbers) {
  numbers.sort((a, b) => a[0].compareTo(b[0]));
  var result = [];
  for (int i = 0; i < numbers.length; i++) {
    var start = numbers[i][0];
    var end = numbers[i][1];
    if (result.isNotEmpty && result[result.length - 1] >= end) {
      continue;
    }
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[j][0] <= end) {
        end = (end > numbers[j][1]) ? end : numbers[j][1];
      }
    }
    result.add([start, end]);
  }
  return result;
}
