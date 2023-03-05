import '../entities/car_entity.dart';

abstract class GetCarByColorRepository {
  CarEntity call(String color);
}
