import 'package:clean_architecture_principles/layers/data/datasources/local/get_cars_by_license_plate_datasource_imp.dart';
import 'package:clean_architecture_principles/layers/data/repositories/get_cars_by_license_plate_repository_imp.dart';
import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_principles/layers/domain/repositories/get_cars_by_license_plate_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarByLicensePlateRepository repository =
      GetCarsByLicensePlateRepositoryImp(
          GetCarsByLicensePlateLocalDataSouceImp());
  test("Must return a entity car instance", () {
    var result = repository("ABC123");

    expect(result, isInstanceOf<CarEntity>());
  });
}
