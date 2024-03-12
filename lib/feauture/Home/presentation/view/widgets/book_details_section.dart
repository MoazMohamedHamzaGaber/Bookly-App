import 'package:flutter/material.dart';

import '../../../../../core/utiles/style.dart';
import 'book_action_botton.dart';
import 'book_rating.dart';

class BookDetailsSection extends StatelessWidget {
   const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
          ),
          child: Container(
            width: 165,
            height: 245,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'))),
          ),
        ),
         const Text('Digital Image Processing',
          textAlign: TextAlign.center,
          style: Style.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text('items.volumeInfo!.authors![0]',
          style: Style.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xff707070),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
          const BookRating(rating: 10,count: 4),
         const BookActionBottom(),
      ],
    );
  }
}
