import './get_cars_by_color_usecase.dart';
import '../../entities/car_entity.dart';
import '../../repositories/get_cars_by_color_repository.dart';

class GetCarsByColorUseCaseImp implements GetCarsByColorUseCase {
  final GetCarByColorRepository _getCarByColorRepository;
  GetCarsByColorUseCaseImp(this._getCarByColorRepository);
  @override
  CarEntity call(String color) {
    return this._getCarByColorRepository(color);
  }
}
