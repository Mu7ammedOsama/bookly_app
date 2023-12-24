import 'package:flutter/material.dart';

// features
import 'package:bookly_app/features/home/presentation/views/widgets/featuredBooksListViewItem.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 8),
          child: FeaturedBooksListViewItem(),
        ),
      ),
    );
  }
}
