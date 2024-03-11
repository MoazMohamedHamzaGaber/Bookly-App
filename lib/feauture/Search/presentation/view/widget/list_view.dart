import 'package:flutter/material.dart';
import '../../../../Home/presentation/view/widgets/best_seller_list_view_item.dart';

class ListViews extends StatelessWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder:(context,index)=>const BestSellerListViewItem(),
      itemCount:10,
    );
  }
}
