import 'package:flutter/material.dart';

class CurrentDescription extends StatelessWidget {
  final String? cityName;
  final String currentDescription;
  final IconData descriptionIcon1;
  final IconData descriptionIcon2;
  final IconData descriptionIcon3;
  final String descriptionCondition1;
  final String descriptionCondition2;
  final String descriptionCondition3;
  final String descriptionChance1;
  final String descriptionChance2;
  final String descriptionChance3;

  const CurrentDescription({
    super.key,
    this.cityName,
    required this.currentDescription,
    required this.descriptionIcon1,
    required this.descriptionIcon2,
    required this.descriptionIcon3,
    required this.descriptionCondition1,
    required this.descriptionCondition2,
    required this.descriptionCondition3,
    required this.descriptionChance1,
    required this.descriptionChance2,
    required this.descriptionChance3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              // height: 50,
              // width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cityName!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    currentDescription,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              // height: 50,
              // width: 40,
              color: Colors.white,
              child: Column(
                children: [
                  Icon(
                    descriptionIcon1,
                    color: Colors.white,
                  ),
                  Text(
                    descriptionChance1,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    descriptionCondition1,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Icon(descriptionIcon2),
                            Text(descriptionChance2),
                            Text(descriptionCondition2),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(descriptionIcon3),
                          Text(descriptionChance3),
                          Text(descriptionCondition3)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
