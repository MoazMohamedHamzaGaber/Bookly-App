import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'linear_gradient.dart';

class FeaturedLoading extends StatelessWidget {
  const FeaturedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: shimmerGradient,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .28,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
