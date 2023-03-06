import 'package:flutter/widgets.dart';

import '../../data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import '../../data/datasources/local/get_cars_by_license_plate_datasource_imp.dart';
import '../../data/datasources/local/save_favorite_car_local_datasouce_imp.dart';
import '../../data/repositories/get_car_by_color_repository_imp.dart';
import '../../data/repositories/get_cars_by_license_plate_repository_imp.dart';
import '../../data/repositories/save_favorite_car_repository_imp.dart';
import '../../domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import '../../domain/usecases/get_cars_by_license_plate/get_cars_by_license_plate_usecase_imp.dart';
import '../../domain/usecases/save_car_favorite/save_favorite_car_usecase_imp.dart';
import '../controllers/car_controller.dart';

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  CarController _controller = CarController(
    GetCarByLicensePlateUseCaseImp(
      GetCarsByLicensePlateRepositoryImp(
        GetCarsByLicensePlateLocalDataSouceImp(),
      ),
    ),
    GetCarsByColorUseCaseImp(
      GetCarByColorRepositoryImp(
        GetCarByColorLocalDataSourceImp(),
      ),
    ),
    SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImp(
        SaveFavoriteCarLocalDataSourceImp(),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
