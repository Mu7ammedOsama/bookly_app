import 'package:flutter/material.dart';

// constants
import 'package:bookly_app/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Image.asset(
          'assets/images/Logo.png',
          width: 96,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: kWhiteColor,
              )),
        ],
      ),
      body: const Center(
        child: Text(
          "Bookly App",
          style: TextStyle(color: kWhiteColor),
        ),
      ),
    );
  }
}
