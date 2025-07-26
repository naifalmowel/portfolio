import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';
import '../../../intro/components/social_icon.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://www.linkedin.com/in/mohammad-naif-almowel/'));}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://github.com/naifalmowel'));}, icon: SvgPicture.asset('assets/icons/github.svg')),
          IconButton( onPressed: () {launchUrl(Uri.parse('https://www.facebook.com/naef.almoel'));}, icon: SvgPicture.asset('assets/icons/facebook.svg' , color: Colors.grey,)),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://www.instagram.com/naifalmowel/'));}, icon: SvgPicture.asset('assets/icons/instagram.svg', color: Colors.grey)),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://wa.me/+971581936696'));}, icon: SvgPicture.asset('assets/icons/whatsapp.svg', color: Colors.grey)),
          const Spacer(),
        ],
      ),
    );
  }
}
