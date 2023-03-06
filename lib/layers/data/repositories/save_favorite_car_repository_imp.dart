// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/save_favorite_car_repository.dart';
import '../datasources/save_favorite_car_datasource.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  final SaveFavoriteCarDataSource dataSource;
  SaveFavoriteCarRepositoryImp(this.dataSource);

  @override
  Future<bool> call(CarEntity carEntity) async {
    return await dataSource(carEntity);
  }
}
