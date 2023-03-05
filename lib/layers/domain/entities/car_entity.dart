class CarEntity {
  String licensePlate;
  int doorNumber;
  double price;
  String color;
  CarEntity({
    required this.licensePlate,
    required this.doorNumber,
    required this.price,
    required this.color,
  });

  double get purchaseSale {
    return price * doorNumber / 2;
  }
}
