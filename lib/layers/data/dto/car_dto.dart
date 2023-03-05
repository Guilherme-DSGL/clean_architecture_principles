import 'dart:convert';

import '../../domain/entities/car_entity.dart';

class CarDTO extends CarEntity {
  String plate;
  int doors;
  double value;
  String color;
  CarDTO({
    required this.plate,
    required this.doors,
    required this.value,
    required this.color,
  }) : super(
            licensePlate: plate, doorNumber: doors, price: value, color: color);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plate': plate,
      'doors': doors,
      'value': value,
      'color': color,
    };
  }

  factory CarDTO.fromMap(Map<String, dynamic> map) {
    return CarDTO(
      plate: map['plate'] as String,
      doors: map['doors'] as int,
      value: map['value'] as double,
      color: map['color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarDTO.fromJson(String source) =>
      CarDTO.fromMap(json.decode(source) as Map<String, dynamic>);
}
