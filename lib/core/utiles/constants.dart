import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff100B20);

const kGTSectraFineRegular='Schyler';

Widget buildMaterialApp({
  required String text,
  required Color backgroundColor,
  required BorderRadius borderRadius,
  required TextStyle textStyle,
  final void Function()? function,
})=>Container(
  decoration: BoxDecoration(
    color: backgroundColor,
    borderRadius: borderRadius
  ),
  child:   MaterialButton(
      onPressed: function,
    child: Text(text,
    style: textStyle,
    ),
  ),
);