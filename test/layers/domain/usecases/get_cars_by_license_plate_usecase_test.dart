import 'package:clean_architecture_principles/layers/data/repositories/get_cars_by_license_plate_repository_imp.dart';
import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/get_cars_by_license_plate/get_cars_by_license_plate_usecase.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/get_cars_by_license_plate/get_cars_by_license_plate_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarByLicensePlateUseCase useCase =
      GetCarByLicensePlateUseCaseImp(GetCarsByLicensePlateRepositoryImp());
  test("Must return a entity car instance", () {
    var result = useCase("ABC123");

    expect(result, isInstanceOf<CarEntity>());
  });
}
