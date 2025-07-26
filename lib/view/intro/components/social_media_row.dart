import 'package:flutter/material.dart';
import 'package:untitled/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconRow extends StatelessWidget {
  const SocialMediaIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        SocialMediaIcon(icon: 'assets/icons/linkedin.svg',onTap: ()=>launchUrl(Uri.parse('https://www.linkedin.com/in/naifalmowel/'))),
        SocialMediaIcon(icon: 'assets/icons/github.svg',onTap: () => launchUrl(Uri.parse('https://github.com/naifalmowel')),),
         SocialMediaIcon(icon: 'assets/icons/facebook.svg',onTap:  ()=>launchUrl(Uri.parse('https://www.facebook.com/naef.almoel')),),
         SocialMediaIcon(icon: 'assets/icons/instagram.svg',onTap: ()=>launchUrl(Uri.parse('https://www.instagram.com/naifalmowel/')),),
         SocialMediaIcon(icon: 'assets/icons/whatsapp.svg',onTap:  ()=>launchUrl(Uri.parse('https://wa.me/+971581936696')),),
      ],
    );
  }
}
