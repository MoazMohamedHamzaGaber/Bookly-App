import 'package:bookly/core/utiles/style.dart';
import 'package:flutter/material.dart';


class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage(),
          const SizedBox(height: 16),
          Expanded(child: _buildText(context)),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          //color: Colors.black,
          borderRadius: BorderRadius.circular(16),
          gradient: _shimmerGradient,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            'https://docs.flutter.dev/cookbook'
                '/img-files/effects/split-check/Food1.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildText(context) {
    if (isLoading) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
           // height: 24,
            decoration: BoxDecoration(
            //  color: Colors.black,
              borderRadius: BorderRadius.circular(16),
              gradient: _shimmerGradient,
              // boxShadow: [
              //   BoxShadow(color: Color(0xFFEBEBF4),),
              //   BoxShadow(color: Color(0xFFEBEBF4),),
              //   BoxShadow(color: Color(0xFFEBEBF4),)
              // ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child:  Text(
                    '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Style.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  '',
                  style: Style.textStyle14.copyWith(
                    color: const Color(0xff707070),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Style.textStyle20.copyWith(
                        fontFamily: '',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    // BookRating(
                    //   rating: items.volumeInfo.averageRating ??0,
                    //   count: items.volumeInfo.ratingsCount ??0,
                    // ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const SizedBox(height: 16),
          // Container(
          //   width: 250,
          //   height: 24,
          //   decoration: BoxDecoration(
          //     color: Colors.black,
          //     borderRadius: BorderRadius.circular(16),
          //   ),
          // ),
        ],
      );
    } else {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do '
              'eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        ),
      );
    }
  }
}
const _shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);