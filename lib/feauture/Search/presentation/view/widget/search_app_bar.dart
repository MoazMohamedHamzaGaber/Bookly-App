

import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(context)=>AppBar(
  elevation: 0,
  backgroundColor: const Color(0xff100B20),
  leading: IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(Icons.arrow_back_ios_new_outlined),
  ),
  title: const Text('Search'),
);
