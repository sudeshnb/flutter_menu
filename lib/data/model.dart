class Vehicle {
  final int id;
  final String name;
  final String imagePath;

  Vehicle({required this.id, required this.name, required this.imagePath});
}

class Category {
  final int id;
  final String name;
  final List<Vehicle> vehicles;

  Category({required this.id, required this.name, required this.vehicles});
}
