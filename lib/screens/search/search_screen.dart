import 'package:flutter/material.dart';
import 'package:moviez_streaming_app/constant/styles.dart';
import 'package:moviez_streaming_app/widgets/card_search.dart';

import '../../widgets/button_primary.dart';
import '../../widgets/search_movie.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = "/search_screen";
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: const ButtonPrimary(label: 'Suggest Movie'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(defaultPadding),
          physics: const BouncingScrollPhysics(),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SearchMovie(searchController: searchController, hinText: 'Search movie...',),
            const SizedBox(height: 30),
            RichText(
              text: TextSpan(
                  text: 'Search Result ',
                  style: TextStyles.title.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "(3)",
                      style: TextStyles.title
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                  ]),
            ),
            const SizedBox(height: 5),
            ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CardSearch(
                  imageUrl: 'assets/images/img-search1.jpg',
                  title: 'The Dark II',
                  tag: 'Horror',
                  rate: [
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.greyStar, size: 18),
                  ],
                ),
                const CardSearch(
                  imageUrl: 'assets/images/img-search2.jpg',
                  title: 'The Dark Night',
                  tag: 'Heroes',
                  rate: [
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                  ],
                ),
                const CardSearch(
                  imageUrl: 'assets/images/img-search3.jpg',
                  title: 'The Dark Tower',
                  tag: 'Action',
                  rate: [
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                    Icon(Icons.star, color: AppColors.yellow, size: 18),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
