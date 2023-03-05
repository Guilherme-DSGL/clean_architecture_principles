import 'package:flutter_test/flutter_test.dart';

import '../../../../lib/layers/data/repositories/get_car_by_color_repository_imp.dart';
import '../../../../lib/layers/domain/repositories/get_cars_by_color_repository.dart';

void main() {
  GetCarByColorRepository repository = GetCarByColorRepositoryImp();

  test("Must return a entitty car with anything color", () {
    var result = repository("anything");

    expect(result, isNotNull);
  });
}
