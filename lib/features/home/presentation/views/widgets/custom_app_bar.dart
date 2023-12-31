import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bookly_app/core/utilities/assets_data.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AssetsData.logo,
              width: 96,
            ),
            IconButton(
              onPressed: () => GoRouter.of(context).push(kSearchViewRoute),
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
