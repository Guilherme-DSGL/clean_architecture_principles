import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Entity must not be null', () {
    CarEntity carEntity = CarEntity(
        color: "red", price: 20000.00, licensePlate: "ABC123", doorNumber: 4);
    expect(carEntity, isNotNull);
  });

  test('Door numbers must be four', () {
    CarEntity carEntity = CarEntity(
        color: "red", price: 20000.00, licensePlate: "ABC123", doorNumber: 4);
    expect(carEntity.doorNumber, 4);
  });

  test('Purchase Sale must be 40,000.00', () {
    CarEntity carEntity = CarEntity(
        color: "red", price: 20000.00, licensePlate: "ABC123", doorNumber: 4);
    expect(carEntity.purchaseSale, 40000.00);
  });

  test('Purchase Sale must be 0', () {
    CarEntity carEntity = CarEntity(
        color: "red", price: 20000.00, licensePlate: "ABC123", doorNumber: 0);
    expect(carEntity.purchaseSale, 0);
  });
}
