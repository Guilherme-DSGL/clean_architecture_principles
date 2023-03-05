import '../../../domain/entities/car_entity.dart';
import '../save_favorite_car_datasource.dart';

class SaveFavoriteCarLocalDataSourceImp implements SaveFavoriteCarDataSource {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return (carEntity.doorNumber > 0 && carEntity.price > 0);
  }
}
