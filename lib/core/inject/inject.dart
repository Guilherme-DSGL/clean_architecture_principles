import 'package:clean_architecture_principles/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

import '../../layers/data/datasources/get_car_by_color_datasource.dart';
import '../../layers/data/datasources/get_cars_by_license_plate_datasource.dart';
import '../../layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import '../../layers/data/datasources/local/get_cars_by_license_plate_datasource_imp.dart';
import '../../layers/data/datasources/local/save_favorite_car_local_datasouce_imp.dart';
import '../../layers/data/datasources/save_favorite_car_datasource.dart';
import '../../layers/data/repositories/get_car_by_color_repository_imp.dart';
import '../../layers/data/repositories/get_cars_by_license_plate_repository_imp.dart';
import '../../layers/data/repositories/save_favorite_car_repository_imp.dart';
import '../../layers/domain/repositories/get_cars_by_color_repository.dart';
import '../../layers/domain/repositories/get_cars_by_license_plate_repository.dart';
import '../../layers/domain/repositories/save_favorite_car_repository.dart';
import '../../layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import '../../layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import '../../layers/domain/usecases/get_cars_by_license_plate/get_cars_by_license_plate_usecase.dart';
import '../../layers/domain/usecases/get_cars_by_license_plate/get_cars_by_license_plate_usecase_imp.dart';
import '../../layers/domain/usecases/save_car_favorite/save_favorite_car_usecase.dart';
import '../../layers/domain/usecases/save_car_favorite/save_favorite_car_usecase_imp.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasources
    getIt.registerLazySingleton<GetCarsByLicensePlateDataSouce>(
        () => GetCarsByLicensePlateLocalDataSouceImp());
    getIt.registerLazySingleton<GetCarByColorDataSource>(
        () => GetCarByColorLocalDataSourceImp());
    getIt.registerLazySingleton<SaveFavoriteCarDataSource>(
        () => SaveFavoriteCarLocalDataSourceImp());

    //repositories
    getIt.registerLazySingleton<GetCarByLicensePlateRepository>(
        () => GetCarsByLicensePlateRepositoryImp(getIt()));
    getIt.registerLazySingleton<GetCarByColorRepository>(
        () => GetCarByColorRepositoryImp(getIt()));
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(
        () => SaveFavoriteCarRepositoryImp(getIt()));

    //usecases
    getIt.registerLazySingleton<GetCarByLicensePlateUseCase>(
        () => GetCarByLicensePlateUseCaseImp(getIt()));
    getIt.registerLazySingleton<GetCarsByColorUseCase>(
        () => GetCarsByColorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SaveFavoriteCarUseCase>(
        () => SaveFavoriteCarUseCaseImp(getIt()));

    //controllers

    getIt.registerFactory<CarController>(
        () => CarController(getIt(), getIt(), getIt()));
  }
}
