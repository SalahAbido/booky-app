import 'package:booky_app/constant.dart';
import 'package:booky_app/core/utils/assets_info.dart';
import 'package:booky_app/feature/howe/data/models/Book.dart';
import 'package:booky_app/feature/howe/presentation/veiws/widgets/build%20_review_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    Key? key,
    required this.book,
  }) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15.0,top: 15.0,bottom: 15.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: CachedNetworkImage(
              width: MedQur.getWidth(context) * 0.3,
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail == null
                  ? ''
                  : book.volumeInfo!.imageLinks!.thumbnail!,
              fit: BoxFit.cover,
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
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(color: Colors.grey),
              ),
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
                  book.volumeInfo?.title == null
                      ? 'unKnown title'
                      : book.volumeInfo!.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: bodyLargeTitle,
                ),
                Text(
                  book.volumeInfo!.authors![0],
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
                          'Free',
                          textAlign: TextAlign.start,
                          style: bodyLargeTitle,
                        ),
                      ],
                    ),
                    ReviewBar(
                      count: book.volumeInfo?.maturityRating!.length ?? 2,
                      rating: book.volumeInfo!.categories!.length ?? 200,
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
