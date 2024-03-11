import 'package:bookly/core/utiles/constants.dart';
import 'package:bookly/core/utiles/style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActionBottom extends StatelessWidget {
   const BookActionBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 37,
        horizontal: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: buildMaterialApp(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              backgroundColor: Colors.white,
              text: 'Free',
              textStyle: Style.textStyle18.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: buildMaterialApp(
              function: ()async{
                Uri uri=Uri.parse('items.volumeInfo!.previewLink!');
                if( await canLaunchUrl(uri))
                  {
                    launchUrl(uri);
                  }
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              backgroundColor: const Color(0xffEF8262),
              text: 'Preview',
              textStyle: Style.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
