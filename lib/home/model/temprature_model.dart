import 'package:flutter/material.dart';

class TempratureModel {
  TempratureModel({
    required this.temprIcon,
    required this.time,
    required this.temperature,
    required this.temprcondition,
  });
  final IconData temprIcon;
  final String time;
  final String temperature;
  final String temprcondition;
}
