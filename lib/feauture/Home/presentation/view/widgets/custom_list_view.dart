import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../book_details_view.dart';

class CustomListViewItem extends StatelessWidget {
   const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BookDetailsView(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            //height: 200,
            fit: BoxFit.fill,
            imageUrl: 'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
            errorWidget: (context, url, error) => const Icon(Icons.error_outline),
           ),
        ),
      ),
    );
  }
}
