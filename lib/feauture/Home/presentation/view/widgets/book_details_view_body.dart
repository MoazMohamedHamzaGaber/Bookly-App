import 'package:flutter/material.dart';
import '../../../data/models/book_model/items.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similay_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.items}) : super(key: key);

  final Items items;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBookDetailsAppBar(),
                  BookDetailsSection(
                    items: items,
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  const SimilarBooksSection(),
                  const SizedBox(
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
