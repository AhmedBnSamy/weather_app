import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';
import '../generated/assets.dart';
import 'CustomUserDataRowOne.dart';
import 'custom_details_weather.dart';

class CustomDisplayWeather extends StatelessWidget {
  const CustomDisplayWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue, // اللون الأول
              Colors.blue.shade300, // اللون الثاني
            ],
            begin: Alignment.topCenter, // بداية التدرج (من الأعلى)
            end: Alignment.bottomCenter, // نهاية التدرج (إلى الأسفل)
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              //that have icon apps and tail and image
              child: CustomUserDataRowOne(), //that have
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Image(
                image: AssetImage(Assets.imagesCloudWeatherIconPNG),
                width: 200,
              ),
            ),
            Text(
              '8\u00B0',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Color(0xff99C7F1),
              ),
            ),
            Text(
              'Overcast',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff99C7F1),
              ),
            ),
            Text(
              'Wednesday, November 30',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff99C7F1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(
              color: Color(0xff99C7F1), // لون الخط
              thickness: 1, // سمك الخط
              indent: 40, // مسافة بادئة من البداية
              endIndent: 40, // مسافة بادئة من النهاية
            ),
            Padding(
              padding: const EdgeInsets.only(left: 64, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDetailsWeather(
                    image: Assets.imagesStorm,
                    text: '3 km/h',
                  ),
                  CustomDetailsWeather(
                    image: Assets.imagesHumidity,
                    text: '87%',
                  ),
                  CustomDetailsWeather(
                    image: Assets.imagesCloudComputing,
                    text: '100%',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
