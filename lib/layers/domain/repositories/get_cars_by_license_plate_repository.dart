import '../entities/car_entity.dart';

abstract class GetCarByLicensePlateRepository {
  CarEntity call(String licensePlate);
}
