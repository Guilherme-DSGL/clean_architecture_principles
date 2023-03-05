import '../../domain/entities/car_entity.dart';

abstract class SaveFavoriteCarDataSource {
  Future<bool> call(CarEntity carEntity);
}
