// Abstract class Animal
abstract class Animal {
  // Private field _name
  String _name;

  // Constructor
  Animal(this._name);

  // Abstract method
  void makeSound();

  // Concrete method
  String getName() => _name;
}

// Lion class
class Lion extends Animal {
  double _maneSize;

  Lion(String name, this._maneSize) : super(name);

  // Getter and Setter with validation
  double get maneSize => _maneSize;

  set maneSize(double size) {
    if (size < 0) {
      throw ArgumentError("Mane size cannot be negative.");
    }
    _maneSize = size;
  }

  @override
  void makeSound() {
    print("Roar!");
  }
}

// Elephant class
class Elephant extends Animal {
  double _trunkLength;

  Elephant(String name, this._trunkLength) : super(name);

  // Getter and Setter with validation
  double get trunkLength => _trunkLength;

  set trunkLength(double length) {
    if (length < 0) {
      throw ArgumentError("Trunk length cannot be negative.");
    }
    _trunkLength = length;
  }

  @override
  void makeSound() {
    print("Trumpet!");
  }
}

// Parrot class
class Parrot extends Animal {
  int _vocabularySize;

  Parrot(String name, this._vocabularySize) : super(name);

  // Getter and Setter with validation
  int get vocabularySize => _vocabularySize;

  set vocabularySize(int size) {
    if (size < 0) {
      throw ArgumentError("Vocabulary size cannot be negative.");
    }
    _vocabularySize = size;
  }

  @override
  void makeSound() {
    print("Squawk!");
  }
}

// Main function
void main() {
  // Create a list of Animal objects
  List<Animal> zoo = [];

  // Add one instance of each animal
  zoo.add(Lion("Simba", 12.5));
  zoo.add(Elephant("Dumbo", 5.8));
  zoo.add(Parrot("Polly", 120));

  // Loop through the list and print required info
  for (var animal in zoo) {
    print("Name: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} inches");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} feet");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }

    animal.makeSound();
    print("-------------");
  }
}
