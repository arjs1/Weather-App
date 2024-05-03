import 'package:flutter/material.dart';
import 'package:weather_app/home/widgets/temprature_slider.dart';

class TemperaturePage extends StatelessWidget {
  const TemperaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    TempratureSlider temperatureData =
        ModalRoute.of(context)?.settings.arguments as TempratureSlider;
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 12, 22, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Icon(
                temperatureData.temIcon,
                size: 100,
                color: Colors.white,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                temperatureData.temTime,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                temperatureData.temDesc,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                temperatureData.temDeg,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
