import '../dto/car_dto.dart';

abstract class GetCarsByLicensePlateDataSouce {
  CarDTO call(String licensePlate);
}
