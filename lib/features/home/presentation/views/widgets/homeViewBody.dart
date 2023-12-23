import 'package:flutter/material.dart';

// features
import 'package:bookly_app/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/customListViewItem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
