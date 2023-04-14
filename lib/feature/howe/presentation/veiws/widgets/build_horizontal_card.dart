import 'package:booky_app/core/utils/assets_info.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key? key,
    this.imageUrl,
  }) : super(key: key);
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            image: imageUrl == null
                ? const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetInfo.testImage),
                  )
                : DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl!),
                  )),
      ),
    );
  }
}
