import '../../dto/car_dto.dart';
import '../get_cars_by_license_plate_datasource.dart';

final car = {
  'plate': "ABC123",
  'doors': 3,
  'value': 300000.00,
  'color': "red",
};
final carSecond = {
  'plate': "ABC123",
  'doors': 3,
  'value': 2000.00,
  'color': "blue",
};

class GetCarsByLicensePlateLocalDataSouceImp
    implements GetCarsByLicensePlateDataSouce {
  @override
  CarDTO call(String licensePlate) {
    if (licensePlate.contains("ABC123")) {
      return CarDTO.fromMap(car);
    }
    return CarDTO.fromMap(carSecond);
  }
}
