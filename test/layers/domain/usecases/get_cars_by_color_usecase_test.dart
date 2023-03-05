import 'package:flutter_test/flutter_test.dart';

import '../../../../lib/layers/domain/entities/car_entity.dart';
import '../../../../lib/layers/domain/repositories/get_cars_by_color_repository.dart';
import '../../../../lib/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import '../../../../lib/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
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

main() {
  test('Must return a car isntance when set anything color', () {
    GetCarsByColorUseCase useCase =
        GetCarsByColorUseCaseImp(GetCarByColorRepositoryImp());
    var result = useCase("blue");

    expect(result, isInstanceOf<CarEntity>());
  });
  test('Must return a car with a red door when set red', () {
    GetCarsByColorUseCase useCase =
        GetCarsByColorUseCaseImp(GetCarByColorRepositoryImp());
    CarEntity result = useCase("red");

    expect(result.color, "red");
  });

  test(
      'Must return a car with a price equals 2000.00 when set anything color except red',
      () {
    GetCarsByColorUseCase useCase =
        GetCarsByColorUseCaseImp(GetCarByColorRepositoryImp());
    CarEntity result = useCase("green");

    expect(result.price, 2000.00);
  });
}
