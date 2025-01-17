
import 'package:flutter/material.dart';

class CustomDetailsWeather extends StatelessWidget {
  const CustomDetailsWeather({
    super.key,
    required this.image,
    required this.text,
     this.time,
  });
  final String image;
  final String text;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          time ?? '',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade300,
          ),
        ),
        Image(
          image: AssetImage(image),
          width: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
