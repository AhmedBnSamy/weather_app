import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../widgets/custom_display_weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomDisplayWeather(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20,vertical: 8 ),
              child: Row(
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade300,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: CustomDetailsWeatherList()),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

class CustomDetailsWeatherList extends StatelessWidget {
  const CustomDetailsWeatherList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            height: 70,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xff6C9DFC),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  '09:00',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade300,
                  ),
                ),
                Image(
                  image: AssetImage(Assets.imagesClouds),
                  width: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '6\u00B0',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            )
          ),
        );
      },
    );
  }
}
