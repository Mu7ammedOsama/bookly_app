import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_action_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SafeArea(
            child: CustomBookDetailsAppBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.3),
            child: const CustomBookImageListViewItem(),
          ),
          const SizedBox(height: 40),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 32),
          const BookDetailsActionButton(),
        ],
      ),
    );
  }
}
