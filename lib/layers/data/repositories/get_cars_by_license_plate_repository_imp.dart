import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';

import '../../domain/repositories/get_cars_by_license_plate_repository.dart';
import '../dto/car_dto.dart';

class GetCarsByLicensePlateRepositoryImp
    extends GetCarByLicensePlateRepository {
  @override
  CarEntity call(String licensePlate) {
    if (licensePlate.contains("ABC123")) {
      return CarDTO(plate: "ABC123", doors: 3, value: 5, color: "red");
    }
    return CarDTO(plate: "qwe123", color: '', doors: 3, value: 2);
  }
}
