import 'package:booky_app/constant.dart';
import 'package:booky_app/core/utils/assets_info.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 15.0),
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              AssetInfo.testImage,
              width: MedQur.getWidth(context) * 0.3,
            ),
          ),
          SizedBox(
            width: MedQur.getWidth(context) * 0.12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Salah is here for developing',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: bodyLargeTitle,
                ),
                Text(
                  'Salah Abido',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: bodyMediumTitle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '19.99 ',
                          textAlign: TextAlign.start,
                          style: bodyLargeTitle,
                        ),
                        Text(
                          '€',
                          style: bodyLargeTitle.copyWith(fontSize: 15.0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '4.8',
                          textAlign: TextAlign.start,
                          style: bodyRating,
                        ),
                        Text(
                          '(2332)',
                          textAlign: TextAlign.start,
                          style: bodyRating.copyWith(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
