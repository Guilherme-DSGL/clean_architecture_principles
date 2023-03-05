import 'package:flutter_test/flutter_test.dart';

import '../../../../lib/layers/domain/entities/car_entity.dart';
import '../../../../lib/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import '../../../../lib/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';

main() {
  test('Must return a car isntance when set anything color', () {
    GetCarsByColorUseCase useCase = GetCarsByColorCaseImp();
    var result = useCase("blue");

    expect(result, isInstanceOf<CarEntity>());
  });
  test('Must return a car with a red door when set red', () {
    GetCarsByColorUseCase useCase = GetCarsByColorCaseImp();
    CarEntity result = useCase("red");

    expect(result.color, "red");
  });

  test(
      'Must return a car with a price equals 2000.00 when set anything color except red',
      () {
    GetCarsByColorUseCase useCase = GetCarsByColorCaseImp();
    CarEntity result = useCase("green");

    expect(result.price, 2000.00);
  });
}
