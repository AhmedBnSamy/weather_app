
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';

class CustomUserDataRowOne extends StatelessWidget {
  const CustomUserDataRowOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            UniconsLine.apps,
            color: Colors.white,
            size: 40,
          ),
        ),
        SizedBox(width: 50,),
        Expanded(
            flex: 3,
            child:ListTile(
              title: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.locationDot,
                    color: Colors.white,
                    size: 25,),
                  const Text(
                    'London',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            )
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Image(image: AssetImage('assets/images/personalImage.jpg'),height: 40,width: 40,),
          ),)

      ],
    );
  }
}
