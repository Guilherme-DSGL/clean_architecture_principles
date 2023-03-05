import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';

import '../../domain/repositories/get_cars_by_license_plate_repository.dart';

class GetCarsByLicensePlateRepositoryImp
    extends GetCarByLicensePlateRepository {
  @override
  CarEntity call(String licensePlate) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
