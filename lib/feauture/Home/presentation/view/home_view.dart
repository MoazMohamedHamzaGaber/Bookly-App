import 'package:bookly/feauture/Home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly/feauture/Home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop:()=> buildShowDialog(context),
      child: Scaffold(
        appBar: buildAppBar(context),
        body: const HomeViewBody(),
      ),
    );
  }
}
