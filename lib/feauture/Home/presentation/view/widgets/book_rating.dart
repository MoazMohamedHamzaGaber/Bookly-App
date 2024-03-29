import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utiles/style.dart';

class BookRating extends StatelessWidget {
   const BookRating({Key? key, required this.rating,required this.count}) : super(key: key);
   final dynamic rating;
   final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20,
        ),
        const SizedBox(
          width: 6.3,
        ),
         Text(
          '$rating',
          style: Style.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '$count',
          style: Style.textStyle14.copyWith(
            color:const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
