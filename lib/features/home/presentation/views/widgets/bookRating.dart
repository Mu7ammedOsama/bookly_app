import 'package:bookly_app/core/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 18,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            '4.8',
            style: Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
        Text(
          '(245)',
          style: Styles.textStyle14.copyWith(color: const Color(0xFF707070)),
        ),
      ],
    );
  }
}
