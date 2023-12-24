import 'package:flutter/material.dart';

// core
import 'package:bookly_app/core/utilities/assetsData.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3/4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.main1),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
