import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utilities/assets_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewestBookListViewItem extends StatelessWidget {
  const NewestBookListViewItem({
    super.key,
    required this.title,
    required this.author,
    required this.price,
  });

  final String title, author, price;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return GestureDetector(
            onTap: () => GoRouter.of(context).push(kBookDetailsViewRoute),
            child: SizedBox(
              height: 128,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 3 / 4,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red,
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(AssetsData.main1),
                          )),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            title,
                            style: Styles.textStyle20,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          author,
                          style: Styles.textStyle14,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$price \$',
                              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const BookRating(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
