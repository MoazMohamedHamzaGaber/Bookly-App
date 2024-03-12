import 'package:bookly/core/loading/build_body_loading.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'build_image_loading.dart';
import 'linear_gradient.dart';

class NewestLoading extends StatelessWidget {
  const NewestLoading({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: shimmerGradient,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImage(),
              const SizedBox(width: 16),
              Expanded(child: buildBody()),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: 10,
      ),
    );
  }
  }