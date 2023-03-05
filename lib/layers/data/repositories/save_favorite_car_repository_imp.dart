import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/save_favorite_car_repository.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return (carEntity.doorNumber > 0 && carEntity.price > 0);
  }
}
