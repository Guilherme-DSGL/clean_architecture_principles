// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture_principles/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/get_cars_by_license_plate/get_cars_by_license_plate_usecase.dart';
import 'package:clean_architecture_principles/layers/domain/usecases/save_car_favorite/save_favorite_car_usecase.dart';

class CarController {
  final GetCarByLicensePlateUseCase _getCarByLicensePlate;
  final GetCarsByColorUseCase _getCarsByColor;
  final SaveFavoriteCarUseCase _saveFavoriteCar;
  CarController(
    this._getCarByLicensePlate,
    this._getCarsByColor,
    this._saveFavoriteCar,
  ) {
    getCarByByColor("red");
  }

  late CarEntity car;

  getCarByByColor(String color) {
    car = _getCarsByColor(color);
  }

  getCarByLicensePlate(String licensePlate) {
    car = _getCarByLicensePlate(licensePlate);
  }

  saveFavoriteCar(CarEntity car) {
    var result = _saveFavoriteCar(car);
  }
}
