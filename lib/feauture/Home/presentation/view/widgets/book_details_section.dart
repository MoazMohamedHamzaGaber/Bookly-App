import 'package:bookly/feauture/Home/data/models/book_model/items.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utiles/style.dart';
import 'book_action_botton.dart';
import 'book_rating.dart';

class BookDetailsSection extends StatelessWidget {
   const BookDetailsSection({Key? key, required this.items}) : super(key: key);

   final Items items;
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
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: items.volumeInfo.imageLinks!.thumbnail,
                errorWidget: (context, url, error) => const Icon(Icons.error_outline),
              ),
            ),
          ),
        ),
          Text(items.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Style.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(items.volumeInfo.authors![0],
          style: Style.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xff707070),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        BookRating(
          rating: items.volumeInfo.averageRating ??0,
          count: items.volumeInfo.ratingsCount ??0,
        ),
          BookActionBottom(items: items,),
      ],
    );
  }
}
