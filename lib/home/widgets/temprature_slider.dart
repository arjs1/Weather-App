import 'package:flutter/material.dart';
// import 'package:weather_app/home/pages/Temperature_page.dart';

class TempratureSlider extends StatelessWidget {
  final IconData temIcon;
  final String temTime;
  final String temDesc;
  final String temDeg;
  const TempratureSlider(
      {super.key,
      required this.temIcon,
      required this.temTime,
      required this.temDesc,
      required this.temDeg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      padding: EdgeInsets.all(8),
      color: Colors.black,
      child: Column(
        children: [
          Icon(
            temIcon,
            color: Colors.white,
          ),
          Text(
            temTime,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            temDesc,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            temDeg,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
