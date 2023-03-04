import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarUseCase {
  Future<bool> call(CarEntity carEntity);
}
