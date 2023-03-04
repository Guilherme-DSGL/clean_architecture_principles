import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarRepository {
  Future<bool> call(CarEntity carEntity);
}
