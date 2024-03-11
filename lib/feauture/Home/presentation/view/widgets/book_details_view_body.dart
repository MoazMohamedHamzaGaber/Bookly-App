import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similay_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
   const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                children:  [
                  CustomBookDetailsAppBar(),
                 BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
