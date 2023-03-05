import '../../../data/dto/car_dto.dart';
import '../../entities/car_entity.dart';
import 'get_cars_by_license_plate_usecase.dart';

class GetCarByLicensePlateUseCaseImp extends GetCarByLicensePlateUseCase {
  @override
  CarEntity call(String licensePlate) {
    if (licensePlate.contains("ABC123")) {
      return CarDTO(plate: "ABC123", doors: 3, value: 5, color: "red");
    }
    return CarDTO(plate: "qwe123", color: '', doors: 3, value: 2);
  }
}
