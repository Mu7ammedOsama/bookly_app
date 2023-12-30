import 'package:flutter/material.dart';
import 'package:bookly_app/core/utilities/assets_data.dart';

class FeaturedBookListViewItem extends StatelessWidget {
  const FeaturedBookListViewItem({super.key, required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageURL),
          ),
        ),
      ),
    );
  }
}
