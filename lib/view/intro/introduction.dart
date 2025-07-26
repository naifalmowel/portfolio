import 'package:flutter/material.dart';

import '../../view model/responsive.dart';
import 'components/intro_body.dart';
import 'components/social_media_list.dart';
import 'components/social_media_list_row.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
      bottomNavigationBar:Responsive.isLargeMobile(context)?Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/14,
              width: MediaQuery.of(context).size.width/1.2,
                child: SocialMediaIconListRow()),
          ],
        ),
      ):SizedBox(),
    );
  }
}



