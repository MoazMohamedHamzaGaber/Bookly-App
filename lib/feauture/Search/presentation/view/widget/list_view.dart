import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // itemBuilder:(context,index)=>  BestSellerListViewItem(
      //   items: BookMod,
      // ),
      itemBuilder:(context,index)=>  Text('data'),
      itemCount:10,
    );
  }
}
