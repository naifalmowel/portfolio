import 'package:photo_view/photo_view.dart';
import 'package:flutter/material.dart';
import 'package:untitled/res/constants.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    showGeneralDialog(
      barrierColor: bgColor,
      transitionDuration: Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                backgroundColor: bgColor,
                body: Container(
                    color: Colors.white,
                    child: Stack(alignment: Alignment.topRight,
                      children: [
                        Center(
                          child: PhotoView(imageProvider: AssetImage(image))
                          ),
                        Padding(
                          padding: const EdgeInsets.all(defaultPadding),
                          child: IconButton(icon: Icon(Icons.close),color: color1,onPressed: (){Navigator.pop(context);},),
                        )
                      ],
                    ),
                    )),
              ),
            ),

        );
      },
    );
  }
}
