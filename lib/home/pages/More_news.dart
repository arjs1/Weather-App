// import 'dart:js';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/home/widgets/weather_news.dart';

class MoreNews extends StatelessWidget {
  const MoreNews({super.key});

  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)?.settings.arguments as WeatherNews;
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
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Text(
                  news.newsData,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                child: Image.asset("images/ramen.PNG"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: const Text(
                  "In Tokyo, long lines circle around blocks, and waiting an hour for your ramen is normal. What awaits might be just a dive, but a hot bowl of ramen rarely fails to hit the spot. Often cooked right before your eyes behind dingy counters, the noodle dish starts here at around 1,000 yen, and comes in various flavors and local versions. There's salty, soy-based 'shoyu' or 'miso' paste. Perhaps it's red-hot spicy with a dash of chili. Sometimes there's no soup at all but a sauce to dip the noodles in.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    wordSpacing: 1,
                    height: 2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
