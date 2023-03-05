import 'package:clean_architecture_principles/layers/data/dto/car_dto.dart';

import '../get_car_by_color_datasource.dart';

class GetCarByColorLocalDataSourceImp extends GetCarByColorDataSource {
  final carRed = {
    'plate': "ABC123",
    'doors': 3,
    'value': 300000.00,
    'color': "red",
  };
  final carBlue = {
    'plate': "ABC123",
    'doors': 3,
    'value': 2000.00,
    'color': "blue",
  };
  @override
  CarDTO call(String color) {
    if (color.contains("red")) {
      return CarDTO.fromMap(carRed);
    }
    return CarDTO.fromMap(carBlue);
  }
}
