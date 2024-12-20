abstract class Shape {
  double area();
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

void main() {
  var shapes = [Circle(5), Rectangle(4, 6)]; // List<Shape> shapes = [Circle(5), Rectangle(4, 6)]; SAME

  // Polymorphism in action
  for (var shape in shapes) {
    print("Area: ${shape.area()}");
  }
}
