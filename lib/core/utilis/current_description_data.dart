import 'package:flutter/material.dart';
// import 'package:weather_app/core/utilis/weather_data.dart';
import 'package:weather_app/home/widgets/current_description.dart';

// int index = 0;
List<CurrentDescription> currentdescription = [
  const CurrentDescription(
      // cityName: weathermodel[index].cityName,
      currentDescription:
          "A wet day in kyoto & it's environment. A low upto 5 \u2103 is expected. Keep your umbrella close & dress warm",
      descriptionIcon1: Icons.water_drop_outlined,
      descriptionIcon2: Icons.water_drop,
      descriptionIcon3: Icons.wind_power_outlined,
      descriptionCondition1: 'Rain',
      descriptionCondition2: 'humidity',
      descriptionCondition3: 'wind',
      descriptionChance1: '86.64%',
      descriptionChance2: '32.6%',
      descriptionChance3: '3.5 m/s'),
];
