import 'package:clean_architecture_principles/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture_principles/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture_principles/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture_principles/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarByColorDataSource dataSource = GetCarByColorLocalDataSourceImp();
  GetCarByColorRepository repository = GetCarByColorRepositoryImp(dataSource);

  test("Must return a entitty car with anything color", () {
    var result = repository("anything");

    expect(result, isNotNull);
  });
}
