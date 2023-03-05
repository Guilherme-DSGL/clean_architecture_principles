// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../..//repositories/save_favorite_car_repository.dart';
import '../../entities/car_entity.dart';
import '../../usecases/save_car_favorite/save_favorite_car_usecase.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;
  SaveFavoriteCarUseCaseImp(this._saveFavoriteCarRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    return await _saveFavoriteCarRepository(carEntity);
  }
}
