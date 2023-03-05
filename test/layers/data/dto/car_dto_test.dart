import 'package:flutter_test/flutter_test.dart';

import '../../../../lib/layers/data/dto/car_dto.dart';
import '../../../../lib/layers/domain/entities/car_entity.dart';

void main() {
  test("CarDTO must be a carEntity instance", () {
    CarEntity car = CarDTO(plate: "", doors: 0, value: 0, color: "");

    expect(car, isInstanceOf<CarEntity>());
  });
}
