import 'package:booky_app/core/utils/assets_info.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/4,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AssetInfo.testImage))),
      ),
    );
  }
}
