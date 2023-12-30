import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utilities/assets_data.dart';

class FeaturedBookListViewItem extends StatelessWidget {
  const FeaturedBookListViewItem({super.key, required this.imageURL});

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: 'imageURL',
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
