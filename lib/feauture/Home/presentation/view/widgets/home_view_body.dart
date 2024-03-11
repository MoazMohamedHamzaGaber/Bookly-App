import 'package:bookly/core/utiles/style.dart';
import 'package:bookly/feauture/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/feauture/Home/presentation/view/widgets/feature_book_list_view.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const[
              CustomAppBar(),
              FeatureBooksListView(),
              SizedBox(
                height: 50,
              ),
              Text('Best Seller',
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

