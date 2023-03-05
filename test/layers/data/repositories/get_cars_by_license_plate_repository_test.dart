import 'package:clean_architecture_principles/layers/data/dto/car_dto.dart';
import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class GetCarByLicensePlateRepository {
  CarEntity call(String licensePlate);
}

class GetCarsByLicensePlateRepositoryImp
    extends GetCarByLicensePlateRepository {
  @override
  CarEntity call(String licensePlate) {
    if (licensePlate.contains("ABC123")) {
      return CarDTO(plate: "ABC123", doors: 3, value: 5, color: "red");
    }
    return CarDTO(plate: "qwe123", color: '', doors: 3, value: 2);
  }
}

void main() {
  GetCarByLicensePlateRepository repository =
      GetCarsByLicensePlateRepositoryImp();
  test("Must return a entity car instance", () {
    var result = repository("ABC123");

    expect(result, isInstanceOf<CarEntity>());
  });
}
