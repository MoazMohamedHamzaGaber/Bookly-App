import 'package:bookly/core/utiles/style.dart';
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

Future<bool> buildShowDialog(context) async{
  bool exitApp=await showDialog(
    context: context,
    builder: (context) =>
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Theme
              .of(context)
              .scaffoldBackgroundColor,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Do you want to close the app?',
              style: Style.textStyle16,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            ],
          ),
        ),
  );
  return exitApp ??false;
}

var searchController=TextEditingController();