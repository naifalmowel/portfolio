import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:Responsive.isDesktop(context)? defaultPadding * 10 : defaultPadding * 7,
      child: TweenAnimationBuilder(duration: const Duration(seconds: 2),builder: (context, value, child) => Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: Colors.black54,
            color: color1,
            value: value,
          ),
          const SizedBox(height: defaultPadding/2,),
          Text(
            '${(value * 100).toInt()}%',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,shadows: [
            Shadow(color: color1,blurRadius: 10 , offset: Offset(2,2)),
            Shadow(color: color3,blurRadius: 10 , offset: Offset(-2,-2)),
          ]),)
        ],
      ), tween: Tween(begin: 0.0,end: 1.0),),
    );
  }
}
