import 'package:flutter_test/flutter_test.dart';

import '../../../../lib/layers/domain/entities/car_entity.dart';
import '../../../../lib/layers/domain/repositories/save_favorite_car_repository.dart';
import '../../../../lib/layers/domain/usecases/save_car_favorite/save_favorite_car_usecase.dart';
import '../../../../lib/layers/domain/usecases/save_car_favorite/save_favorite_car_usecase_imp.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return (carEntity.doorNumber > 0 && carEntity.price > 0);
  }
}

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
