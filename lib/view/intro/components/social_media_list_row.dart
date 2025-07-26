import 'package:flutter/material.dart';
import 'package:untitled/view/intro/components/social_media_coloumn.dart';
import 'package:untitled/view/intro/components/social_media_row.dart';
import '../../../res/constants.dart';

class SocialMediaIconListRow extends StatelessWidget {
  const SocialMediaIconListRow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 0.5),
          child: Text(
            'Follow Me',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: bodyTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 3,
          width: size.width*0.1,
          decoration: BoxDecoration(
            color: bodyTextColor,
            borderRadius: BorderRadius.circular(defaultPadding),
          ),
        ),
        const SocialMediaIconRow(),
        const Spacer(),
      ],
    );
  }
}
