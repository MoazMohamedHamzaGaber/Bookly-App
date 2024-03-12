import 'package:flutter/material.dart';

Widget buildBody() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 15,
      ),
      Container(
        width: double.infinity,
        height: 24,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      const SizedBox(height: 3),
      Container(
        width: 250,
        height: 24,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      const SizedBox(height: 3),
      Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 24,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            child: Container(
              height: 24,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}