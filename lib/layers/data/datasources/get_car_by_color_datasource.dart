import '../dto/car_dto.dart';

abstract class GetCarByColorDataSource {
  CarDTO call(String cor);
}
