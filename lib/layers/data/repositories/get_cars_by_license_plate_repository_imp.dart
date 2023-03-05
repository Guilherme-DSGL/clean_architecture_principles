import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_cars_by_license_plate_repository.dart';
import '../datasources/get_cars_by_license_plate_datasource.dart';

class GetCarsByLicensePlateRepositoryImp
    extends GetCarByLicensePlateRepository {
  final GetCarsByLicensePlateDataSouce dataSource;

  GetCarsByLicensePlateRepositoryImp(this.dataSource);
  @override
  CarEntity call(String licensePlate) {
    return dataSource(licensePlate);
  }
}
