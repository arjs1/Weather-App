import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app/core/utilis/temperature_data.dart';

import 'package:weather_app/core/utilis/weather_data.dart';
import 'package:weather_app/home/pages/Temperature_page.dart';
import 'package:weather_app/home/widgets/current_condition.dart';

import 'package:weather_app/home/widgets/image_Placeholder.dart';
import 'package:weather_app/home/widgets/temprature_slider.dart';
import 'package:weather_app/home/widgets/weather_news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 12, 22, 1),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: GNav(
              gap: 8,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromRGBO(33, 33, 33, 1),
              padding: EdgeInsets.all(8),
              onTabChange: (index) {
                print(index);
              },
              tabs: [
                GButton(
                  icon: Icons.home_filled,
                  text: 'Home',
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                GButton(
                  icon: Icons.save,
                  text: 'Saved',
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ]),
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: weathermodel.length,
              itemBuilder: (BuildContext context, int index) {
                return ImagePlaceholder(
                  imagePath: weathermodel[index].cityImage,
                  imageName: weathermodel[index].cityName,
                  imageTime: weathermodel[index].cityTime,
                );
              },
            ),
          ),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: weathermodel.length,
              itemBuilder: (BuildContext context, int index) {
                return CurrentConditon(
                  temp: weathermodel[index].currentTemp,
                  condition: weathermodel[index].currentCondition,
                  tempIcon: weathermodel[index].currentwetIcon,
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Container(
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: weathermodel.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return CurrentDescription(
          //         cityName: weathermodel[index].cityName,
          //         currentDescription:
          //             currentdescription[index].currentDescription,
          //         descriptionIcon1: currentdescription[index].descriptionIcon1,
          //         descriptionIcon2: currentdescription[index].descriptionIcon2,
          //         descriptionIcon3: currentdescription[index].descriptionIcon3,
          //         descriptionCondition1:
          //             currentdescription[index].descriptionCondition1,
          //         descriptionCondition2:
          //             currentdescription[index].descriptionCondition2,
          //         descriptionCondition3:
          //             currentdescription[index].descriptionCondition3,
          //         descriptionChance1:
          //             currentdescription[index].descriptionChance1,
          //         descriptionChance2:
          //             currentdescription[index].descriptionChance2,
          //         descriptionChance3:
          //             currentdescription[index].descriptionChance3,
          //       );
          //     },
          //   ),
          // ),

          Container(
            height: 110,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: temperaturemodel.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TemperaturePage(),
                        settings: RouteSettings(
                          arguments: TempratureSlider(
                            temIcon: temperaturemodel[index].temprIcon,
                            temTime: temperaturemodel[index].time,
                            temDesc: temperaturemodel[index].temprcondition,
                            temDeg: temperaturemodel[index].temperature,
                          ),
                        ),
                      ),
                    );
                  },
                  child: TempratureSlider(
                    temIcon: temperaturemodel[index].temprIcon,
                    temTime: temperaturemodel[index].time,
                    temDesc: temperaturemodel[index].temprcondition,
                    temDeg: temperaturemodel[index].temperature,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 15,
                );
              },
            ),
          ),
          Container(
            child: WeatherNews(
              newsData:
                  'The Japanese dish that has become a tourist attraction for thousands...',
            ),
          )
        ],
      ),
    );
  }
}
