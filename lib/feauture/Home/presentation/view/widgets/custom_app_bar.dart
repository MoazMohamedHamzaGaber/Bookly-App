import 'package:bookly/feauture/Search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSizeWidget buildAppBar(context) => AppBar(
      backgroundColor: const Color(0xff100B20),
      titleSpacing: 20,
      elevation: 0,
      title: const Image(
        width: 75,
        height: 16,
        image: AssetImage('assets/images/Logo.png'),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchView(),
              ),
            );
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 22,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );

