import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                CustomBookImageListView(),
                SizedBox(height: 24),
                Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BooksListView(),
          ),
        ],
      ),
    );
  }
}
