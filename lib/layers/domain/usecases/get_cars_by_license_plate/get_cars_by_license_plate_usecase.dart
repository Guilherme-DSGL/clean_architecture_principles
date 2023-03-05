import '../../entities/car_entity.dart';

abstract class GetCarByLicensePlateUseCase {
  CarEntity call(String licensePlate);
}
