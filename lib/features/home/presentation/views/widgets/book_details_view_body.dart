import 'package:bookly_app/features/home/presentation/views/widgets/customBookDetailsAppBar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SafeArea(child: CustomBookDetailsAppBar()),
        ],
      ),
    );
  }
}
