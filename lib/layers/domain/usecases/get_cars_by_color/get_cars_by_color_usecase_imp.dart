import '../../entities/car_entity.dart';
import 'get_cars_by_color_usecase.dart';

class GetCarsByColorCaseImp implements GetCarsByColorUseCase {
  @override
  CarEntity call(String color) {
    if (color.contains("red")) {
      return CarEntity(
          licensePlate: "QWE123", doorNumber: 4, price: 4000.00, color: "red");
    }
    return CarEntity(
        licensePlate: "ABC123", doorNumber: 4, price: 2000.00, color: "blue");
  }
}
