import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

// core
import 'package:bookly_app/core/utilities/styles.dart';

// features
import 'package:bookly_app/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featuredBooksListView.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/BestSellerListViewItem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 24),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
