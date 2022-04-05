//abstract class
//interfaces
//mixin

import 'dart:io';

void main(List<String> args) {
  /*Figure rect = Rectangle(20, 30);
  rect.calculateArea(); 
  implement example below
  Person person = Employee();
  person.name = 'Akylai';
  person.display();
  Employer a = Employer("Akylai"); 
  kel(12).convertToOthers();
  far(15).convertToOthers();
  Tiles tiles = Tiles(brand: " ", price: 250);
  print(tiles.getData());
  Children children = Children("Akylai", "Dzhumanazarova", 20);
  children.display(); 
  Soda soda = Soda(null);
  soda.show_my_drink();
  Worker worker = Worker("Akylai", "Dzhumanazarova", 5, 27);
  worker.getSalary();*/
  CanTrain canTrain = CanTrain();
  canTrain.train();
}

abstract class Figure {
  void calculateArea();
}

class Rectangle extends Figure {
  final int? a;
  final int? b;
  Rectangle(this.a, this.b);

  @override
  void calculateArea() {
    // TODO: implement calculateArea
  }
}

class Person {
  String name;
  Person(this.name);

  void display() {
    print("Name: $name");
  }
}

class Employee implements Person {
  String name = " ";
  void display() {
    print("Employee name: $name");
  }
}

mixin worker {
  String company = " ";

  void work() {
    print("Works in $company");
  }
}

class Employer extends Person with worker {
  Employer(String name) : super(name);
}

//task 1;
class BaseConverter implements Converter {
  void convertToOthers() {
    // TODO: implement convertToOthers
  }

  @override
  late int cell;
}

abstract class Converter {
  int cell;
  Converter(this.cell);
  void convertToOthers();
}

class far implements Converter {
  int cell;
  far(this.cell);
  @override
  void convertToOthers() {
    print((cell * 9.5) + 32);
    // TODO: implement convertToOthers
  }
}

class kel implements Converter {
  int cell;
  kel(this.cell);
  @override
  void convertToOthers() {
    print((cell + 273.15));
    // TODO: implement convertToOthers
  }
}

//task 2;
class Tiles {
  String brand;
  int? size_h;
  int? size_w;
  int price;

  Tiles({
    required this.brand,
    this.size_h,
    this.size_w,
    required this.price,
  });

  getData() {
    return "Бренд: $brand, SizeH: ${size_h ?? 0}, SizeW: ${size_w ?? 0}, Price: $price ";
  }
}

//task 3;
class Children {
  String? name;
  String? surName;
  int? age;
  Children(this.name, this.surName, this.age);

  void display() {
    print("name: $name, surname: $surName, age: $age");
  }
}

//task 4;
class Soda {
  String? add;
  Soda(this.add);

  void show_my_drink() {
    print(add != null ? "Газировка и $add" : "Обычная газировка");
  }
}

//task 5;
class Worker {
  String? name;
  String? surName;
  int? rate;
  int? days;
  Worker(this.name, this.surName, this.rate, this.days);

  void getSalary() {
    print(
        "Name: $name, surname: $surName, rate: $rate, days: $days, salary: ${rate! * days!}");
  }
}

// task 6; не полностью
class Car {
  String? carMark;
  String? carClass;
  int? carweight;
}

class Driver {
  String? name;
  String? surName;
  int? years;
  Driver(this.name, this.surName, this.years);
}

class Engine {
  int? speed;
  int? mark;
  Engine(this.speed, this.mark);
}

void start() {
  print("Поехали!");
}

void stop() {
  print("Остановись");
}

void turnRight() {
  print("Поворот направо");
}

void turnLeft() {
  print("Поворот налево");
}

void printCarSettings() {
  printCarSettings();
}

//task 7;
class CanTrain {
  void train() {
    stdout.write("PLease, enter the height and width of tonnel: ");
    int height = int.parse(stdin.readLineSync()!);
    int width = int.parse(stdin.readLineSync()!);
    print("Height: $height, width: $width");
    stdout
        .write("So now, please enter the height, width and lengths of train: ");
    double train_h = double.parse(stdin.readLineSync()!);
    double train_w = double.parse(stdin.readLineSync()!);
    double train_l = double.parse(stdin.readLineSync()!);
    print("Height: $train_h, width: $train_w, length: $train_l");
  }
}
