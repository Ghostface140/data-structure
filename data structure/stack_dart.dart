class Stack<T> {
  List<T> storage = [];

  push(T data) {
    if (data == null) {
      return;
    }
    storage = [...this.storage, data];
    return data;
  }

  pop() {
    final data = storage[this.storage.length - 1];
    storage.removeLast();
    return data;
  }

  search(T data) {
    for (int i = 0; i <= storage.length; i++) {
      if (storage[i] == data) {
        return i;
      }
    }
    return -1;
  }

  size() {
    print(storage.length);
  }

  display() {
    for (T element in storage) {
      print(element);
    }
  }
}
