import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding / 2),
        AreaInfoText(title: 'Contact', text: '+971 58 193 6696'),
        AreaInfoText(title: 'Email', text: 'naif.almowel@gmail.com'),
        AreaInfoText(
          title: 'LinkedIn',
          text: '@mohammad-naif-almowel',
          onTap: () {launchUrl(Uri.parse('https://www.linkedin.com/in/mohammad-naif-almowel/'));},
        ),
        AreaInfoText(title: 'Github', text: '@naifalmowel', onTap: () {launchUrl(Uri.parse('https://github.com/naifalmowel'));}),
        SizedBox(height: defaultPadding),
        Divider(),
        SizedBox(height: defaultPadding),
        Text(
          'Skills',
          style: TextStyle(color: color1, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding),

      ],
    );
  }
}
