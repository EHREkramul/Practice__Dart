class Father{
  Father(){
    print("Father constructor");
  }
  totalTaka(){
    print("Father's Money = 80,000 ");
  }
}

class Son extends Father{
  // Son(); // Empty Constructor
  Son(){
    print('Son Constructor');
  }
  @override // this annotation is Optional. Using for convention only to identify the override method.
  totalTaka(){ // Method Overriding
    print("Son's Money = 50,000 ");
  }
}

class Vehicle{
  int speed;
  int cc;
  String model;

  Vehicle(this.speed, this.cc, this.model);
  void start(){
    print("Vehicle Starts");
  }
  void stop(){
    print('Vehicle Stops');
  }
  void getcc(){
    print('Bike cc is: $cc');
  }
}

class Bike extends Vehicle{
  String bikeName;

  Bike(speed, cc, model, this.bikeName):super(speed, cc, model); // Passing values to the parent class constructor
  // Bike(super.speed, super.model, this.bikeName, super.cc); // Alternative way to assign parent constructor parameters. parameter order doesn't matter.

  @override
  void start(){
    super.start();
    print('$bikeName Starts');
  }
  @override
  void stop(){
    super.stop();
    print('$bikeName Stops');
  }

}
void main(){
  var f1 = Father();
  f1.totalTaka();

  var s1 = Son();
  s1.totalTaka();

  Bike bike_1 = Bike(120, 250, 'v3-2024', 'Yamaha');
  bike_1.start();
  bike_1.getcc();
}