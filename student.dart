class Student {
  String _name;
  int _age;

  Student(this._name, this._age);

  String get name => _name;
  set name(String name) => _name = name;

  int get age => _age;
  set age(int age) => _age = age;

  void study() {
    print('$_name is such an amaizing person.');
  }
}

void main() {
  // Creating instances of the Student class
  var student1 = Student('Glad', 20);
  var student2 = Student('Joy', 22);

  // Accessing and modifying private attributes using getter and setter methods
  student1.name = 'Glad';
  student1.age = 21;

  // Accessing private attributes using getter methods
  print('${student1.name} is ${student1.age} years old.');
  print('${student2.name} is ${student2.age} years old.');

  // Calling a method on a Student instance
  student1.study();
  student2.study();
}
