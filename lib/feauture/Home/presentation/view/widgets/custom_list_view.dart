import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../book_details_view.dart';

class CustomListViewItem extends StatelessWidget {
   const CustomListViewItem({Key? key, required this.imageUrl}) : super(key: key);
   final  imageUrl;

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
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error_outline),
           ),
        ),
      ),
    );
  }
}
