import 'package:clean_architecture_principles/layers/data/datasources/local/save_favorite_car_local_datasouce_imp.dart';

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/save_favorite_car_repository.dart';
import '../datasources/save_favorite_car_datasource.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  final SaveFavoriteCarDataSource dataSource =
      SaveFavoriteCarLocalDataSourceImp();
  @override
  Future<bool> call(CarEntity carEntity) async {
    return await dataSource(carEntity);
  }
}
