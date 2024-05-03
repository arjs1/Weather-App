import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentConditon extends StatelessWidget {
  final String temp;
  final String condition;
  final String tempIcon;
  const CurrentConditon({
    super.key,
    required this.temp,
    required this.condition,
    required this.tempIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                temp,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                condition,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            tempIcon,
            colorFilter: ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
            width: 70,
            // height: 40,
          ),
        ],
      ),
    );
  }
}
