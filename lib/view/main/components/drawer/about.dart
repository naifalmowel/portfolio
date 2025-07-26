import 'package:flutter/material.dart';
import '../../../../res/constants.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const DrawerImage(),
            const Spacer(),
            Text(
              'Mohammad Naif Almowel',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: color1,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: defaultPadding / 4),
            Text(
              'Flutter Developer & IT Manager',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color1,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
