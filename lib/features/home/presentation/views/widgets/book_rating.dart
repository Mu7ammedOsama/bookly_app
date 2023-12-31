import 'package:bookly_app/core/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.averageRating,
    required this.ratingsCount,
  });

  final MainAxisAlignment mainAxisAlignment;
  final int averageRating;
  final int ratingsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            averageRating.toString(),
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($ratingsCount)',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
