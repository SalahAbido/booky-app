import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key? key,
    this.imageUrl,
  }) : super(key: key);
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            imageUrl: imageUrl ?? ' ',
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'There are a problem in this image',
                  style: bodyRating,
                ),
                const Icon(Icons.error_outline_rounded)
              ],
            ),
            // placeholder: (context, url) => const LoadingWidget(),
          ),
        ),
      ),
    );
  }
}
