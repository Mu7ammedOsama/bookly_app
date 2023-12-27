import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_list_view_item.dart';

class CustomBookImageListView extends StatelessWidget {
  const CustomBookImageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 8),
          child: CustomBookImageListViewItem(),
        ),
      ),
    );
  }
}
