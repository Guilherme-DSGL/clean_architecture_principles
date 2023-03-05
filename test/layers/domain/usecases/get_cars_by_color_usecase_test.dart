import 'package:clean_architecture_principles/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture_principles/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Must return a car isntance when set anything color', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp(
        GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()));
    var result = useCase("blue");

    expect(result, isInstanceOf<CarEntity>());
  });
  test('Must return a car with a red door when set red', () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp(
        GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()));
    CarEntity result = useCase("red");

    expect(result.color, "red");
  });

  test(
      'Must return a car with a price equals 2000.00 when set anything color except red',
      () {
    GetCarsByColorUseCase useCase = GetCarsByColorUseCaseImp(
        GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()));
    CarEntity result = useCase("green");

    expect(result.price, 2000.00);
  });
}
