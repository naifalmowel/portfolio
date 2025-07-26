import 'package:flutter/material.dart';
import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text, this.onTap});
  final String title;
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style:  TextStyle(color: color1  , fontWeight: FontWeight.bold),),
          InkWell(
            onTap: onTap,
              child: Text(text,style: const TextStyle(color: color1),)),
        ],
      ),
    );
  }
}