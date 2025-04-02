import 'dart:collection';

void main() {

}

class HashMap {

 //creating a map (hash table)
  Map<String, int> ages = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 35,
  };

  //Accessing values using keys
  int setAge (age){
    return _this.age;
  }
  print('Alice age: ${ages['Alice']}');

  //Adding a new key-value
  ages['David'] = 28;
  print('David age: ${ages['David']}');

  //Updating a value
  ages['Alice'] = 31;
  print('Updated Alice age: ${ages['Alice']}');

  // Removing key-value pair
  ages.remove('Bob');
  print('Bob age: ${ages['Bob']}');

  //Iterating over map
  ages.forEach((name, age) {
    print('$name is $age years old');
  });

  //Checking if a key exists
  if (ages.containsKey('Charlie')) {
    print('Charlie is in the Map');
  }
  //Checking if a value exists
  if (ages.containsValue(35)) {
    print('Someone is 35 years old');
  }

}