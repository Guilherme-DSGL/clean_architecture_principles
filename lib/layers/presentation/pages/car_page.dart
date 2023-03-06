import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../controllers/car_controller.dart';

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  CarController _controller = GetIt.I.get<CarController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(_controller.car.licensePlate),
      ),
    );
  }
}
