// Fncs in dart
void iterateOverNumbers(int firstNumber, int secondNumber) {
  for (int i = firstNumber; i < secondNumber; i++) {
    print('${i}');
  }
}

void greet(String user) {
  print('${user} How are u');
}
// End of Fncs in dart

// Classes in dart
class Person {
  String userName;
  int userAge;
  
  Person(this.userName, this.userAge);
  
  void introduceSelf() {
    print('Hello am by names of ${userName} and ${userAge} years old');
  }
}

// End of classes in dart

// Inheritance in dart
class Animal {
  void sounds () {
    print('Animals make sounds');
  }
}

class Dog extends Animal {
  @override
  void sounds () {
    print('Woofs !');
  }
}

// End of Inheritance in dart

// Arrays and objects 
var numbers = [1,2,4,5,3,4];
var studentInfo = {'name': 'Kwizera caleb', 'age': 19};

//SETS 
var setOfNumbers = {1,2,3,4,5};

// null safety
String? title;

// dynamic
dynamic subject = 'Dart Programming';

// Features and Streams
Future<String> fetchData () async {
  return Future.delayed(Duration(seconds: 2), () => 'Data Loaded');
} 


// difference between yield and return:
// They both exist functions but yield provides multiple values at a time while return provides a single value

void main () async {
  print(title);
  
  print('Fetching data');
  var data = await fetchData();
  print('Data loaded: ${data}');
  
  
  var person = Person('Kwizera Caleb', 20);
  person.introduceSelf();
  
  var dog = Dog();
  dog.sounds();
  
  
  var name = "kwizera caleb";
  print(name);
  
  String city = "Kigali";
  print(city);
  
  int age = 19;
  print(age);
  
  double discount = 2.5;
  print(discount);
  
  bool isStudent = true;
  print('Am student: ${isStudent}');
  
  greet('Spongebob');
  
  int numberOne = 20;
  int numberTwo = 12;
  
  print(numberOne * numberTwo);
  
  if (age < 18) {
    print('You are still young');
  } else {
    print('You are an adult');
  }
  
  iterateOverNumbers(1,20);
  
}




/* 
1. Write a function that takes a number as input and prints all even numbers from 1 to that number.
Bonus: Use a named optional parameter to control whether odd numbers are printed instead.
*/




void printWantedEvenNumbers (int endNumber, {String numberTypesToIterate = 'even'}) {
  if (numberTypesToIterate == 'even') {
    for (int i = 1; i <= endNumber; i++) {
      if (i % 2 == 0) {
        print('Even numbers are these: ${i}');
      }
    }
  } else if (numberTypesToIterate == 'odd') {
    for (int i = 1; i <= endNumber; i++) {
      if (i % 2 != 0) {
        print('Odd numbers are these: ${i}');
      }
    }
  } else {
    print('Provide number types');
  }
}

// classes and objects
class Car {
  String model;
  int year;
  String make;
  
  // default constructor
  Car(this.model, this.year, this.make);
  
  void drive (int distance) {
    print('${make} drove ${model} distance ${distance} km!');
  }
}


// inheritance and polymorphism
class Employee {
  String name;
  int salary;
  
  Employee(this.name, this.salary);
  
  void work () {
    print('${name} is working');
  }
  
}

class Manager extends Employee {
  
  Manager(String name, int salary) : super(name, salary);
  @override
  void work () {
    print('${name} is managing team');
  }
}

var userName = 'Kwizera Caleb';


void main() {
  
  print(userName.length);
 
  var workOutput = Manager('Caleb', 20);
  workOutput.work();
  
  var car = Car('Toyota', 1998, 'Made by toyota');
  car.drive(20);

  printWantedEvenNumbers(10, numberTypesToIterate: 'odd');
}

