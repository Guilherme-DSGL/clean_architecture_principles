// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture_principles/layers/domain/repositories/get_cars_by_license_plate_repository.dart';

import '../../entities/car_entity.dart';
import 'get_cars_by_license_plate_usecase.dart';

class GetCarByLicensePlateUseCaseImp extends GetCarByLicensePlateUseCase {
  final GetCarByLicensePlateRepository repository;
  GetCarByLicensePlateUseCaseImp(this.repository);
  @override
  CarEntity call(String licensePlate) {
    return repository(licensePlate);
  }
}
