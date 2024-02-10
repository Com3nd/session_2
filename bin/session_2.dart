abstract class Car {
  String name;
  int weight;
  DateTime year;

  Car(this.name, this.weight, this.year);

  void drive();
}

class Bus extends Car implements washable{
  @override
  bool clean = false;

  Bus(String name, int weight, DateTime year) : super(name, weight, year);

  @override
  void drive() {
    print("The bus is driving...");
  }

  @override
  void wash() {
    clean = true;
    print("The $name bus has been washed");
  }
}

 abstract interface class washable {
  late bool clean;

  void wash();
}

void main() {
  Bus bus = Bus('Worm', 2000, DateTime.parse("2015-04-12"));
  print(bus.clean);
  bus.wash();
  print(bus.clean);
}