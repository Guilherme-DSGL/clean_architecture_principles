import '../../data/dto/car_dto.dart';
import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_cars_by_color_repository.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    var json = {
      'plate': "ABC123",
      'doors': 3,
      'value': 300000.00,
      'color': "red",
    };
    return CarDTO.fromMap(json);
  }
}
