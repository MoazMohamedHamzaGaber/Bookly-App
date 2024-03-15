import 'package:flutter/material.dart';

import '../../../../../core/utiles/style.dart';

class SearchEmpty extends StatelessWidget {
  const SearchEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage(
                'assets/images/search.png',
              ),
              height: size.height * 0.2,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                'Search is empty',
                style: Style.textStyle20,
              ),
            ),
             Text(
              'Search Now',
              style: Style.textStyle16.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
