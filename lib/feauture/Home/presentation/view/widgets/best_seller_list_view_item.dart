import 'package:bookly/core/utiles/style.dart';
import 'package:bookly/feauture/Home/presentation/view/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../book_details_view.dart';

class BestSellerListViewItem extends StatelessWidget {
   const BestSellerListViewItem({Key? key}) : super(key: key);

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
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: 'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
                  errorWidget: (context, url, error) => const Icon(Icons.error_outline),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'Digital Image Proccessing',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyle20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Moaz Hamza',
                    style: Style.textStyle14.copyWith(
                      color: const Color(0xff707070),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.textStyle20.copyWith(
                          fontFamily: '',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                       const BookRating(),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
