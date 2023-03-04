// ignore_for_file: public_member_api_docs, sort_constructors_first

class CarEntity {
  String licensePlate;
  int doorsNumber;
  double price;
  String color;
  CarEntity({
    required this.licensePlate,
    required this.doorsNumber,
    required this.price,
    required this.color,
  });

  double get purchaseSale {
    return price * doorsNumber / 2;
  }
}
