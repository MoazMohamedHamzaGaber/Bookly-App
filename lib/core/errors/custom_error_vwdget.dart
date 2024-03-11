import 'package:bookly/core/utiles/style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
   const CustomErrorWidget({required this.text,Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Text(
          text,
          style: Style.textStyle18,
          textAlign: TextAlign.center,
        ));
  }
}
