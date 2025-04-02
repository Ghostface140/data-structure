class Hashtable<T, V> {
  final List<List<MapEntry<T, V>>> _bucket;

  int _size = 0;

  Hashtable([int storageCapacity = 0])
    : _bucket = List.generate(storageCapacity, (_) => []);

  int _hash(T key) => key.hashCode % _bucket.length;

  void put(T key, V value) {
    final index = _hash(key);
    final bucket = _bucket[index];

    //checking if key exist and update
    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i].key == key) {
        bucket[i] = MapEntry(key, value);
      }
    }
    return bucket.add(MapEntry(key, value));
    _size++;
  }

  V? get(T key) {
    final bucket = _bucket[_hash(key)];
    for (final entry in bucket) {
      if (entry.key == key) return entry.value;
    }
    return null;
  }

  bool remove(T key) {
    final bucket = _bucket[_hash(key)];
    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i].key == key) {
        bucket.removeAt(i);
        _size--;
        return true;
      }
    }
    return false;
  }
}

void main() {
  Hashtable n = Hashtable();
  n.put('Alice', 45);
}
