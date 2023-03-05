import 'package:clean_architecture_principles/layers/data/datasources/get_cars_by_license_plate_datasource.dart';
import 'package:clean_architecture_principles/layers/data/datasources/local/get_cars_by_license_plate_datasource_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarsByLicensePlateDataSouce dataSource =
      GetCarsByLicensePlateLocalDataSouceImp();
  test("Must not be null", () {
    var result = dataSource("ABC123");

    expect(result.licensePlate, "ABC123");
  });
}
