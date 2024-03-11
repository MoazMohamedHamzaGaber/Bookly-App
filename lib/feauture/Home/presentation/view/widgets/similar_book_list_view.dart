import 'package:flutter/material.dart';
import 'custom_list_view.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.15,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomListViewItem() ,
        separatorBuilder: (context,index)=>const SizedBox(
          width: 15,
        ),
        itemCount:10,
      ),
    );
  }
}
