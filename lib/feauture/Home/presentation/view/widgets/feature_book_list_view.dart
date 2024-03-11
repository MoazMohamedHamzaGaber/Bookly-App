import 'package:bookly/feauture/Home/presentation/view/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height *.28,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>  const CustomListViewItem(),
          separatorBuilder: (context,index)=>const SizedBox(
            width: 15,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
