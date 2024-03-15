import 'package:bookly/core/utiles/style.dart';
import 'package:bookly/feauture/Home/presentation/view/widgets/feature_book_list_view.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              FeatureBooksListView(),
              SizedBox(
                height: 50,
              ),
              Text('Newest Books',
                style: Style.textStyle18,
              ),
              BestSellerListView(),
            ],
          ),
        ),
      ),
    );
  }
}

