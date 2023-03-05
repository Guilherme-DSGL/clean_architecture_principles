// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../domain/entities/car_entity.dart';
import '../../domain/repositories/get_cars_by_color_repository.dart';
import '../datasources/get_car_by_color_datasource.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  final GetCarByColorDataSource _getCarByColorDataSource;
  GetCarByColorRepositoryImp(this._getCarByColorDataSource);

  @override
  CarEntity call(String color) {
    return _getCarByColorDataSource(color);
  }
}
