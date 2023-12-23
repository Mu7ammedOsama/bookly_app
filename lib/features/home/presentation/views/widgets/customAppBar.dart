import 'package:flutter/material.dart';

// constants
import 'package:bookly_app/constants.dart';

// dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// core
import 'package:bookly_app/core/utilities/assetsData.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 24, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 96,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: kWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
