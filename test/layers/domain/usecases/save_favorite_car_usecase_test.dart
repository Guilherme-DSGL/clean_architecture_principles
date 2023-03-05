import 'package:clean_architecture_principles/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/save_car_favorite/save_favorite_car_usecase.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/save_car_favorite/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("Must sucessfully save a car", () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());
    var car = CarEntity(
        color: "red", doorNumber: 3, licensePlate: "ABC123", price: 40000.00);
    var result = await useCase(car);

    expect(result, true);
  });

  test("Must not sucessfully save a car", () async {
    SaveFavoriteCarUseCase useCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());
    var car = CarEntity(
        color: "red", doorNumber: 0, licensePlate: "ABC123", price: 0);
    var result = await useCase(car);

    expect(result, false);
  });
}
