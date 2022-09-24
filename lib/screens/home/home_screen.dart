import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviez_streaming_app/constant/styles.dart';
import 'package:moviez_streaming_app/screens/search/search_screen.dart';

import '../../widgets/card_from_disney.dart';
import '../../widgets/card_slider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home_screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Moviez",
                  style: TextStyles.h1,
                ),
                subtitle: Text(
                  "Watch much easier",
                  style: TextStyles.subtitle.copyWith(height: 1.75),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Get.to(() => const SearchScreen());
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            // ignore: sized_box_for_whitespace
            SizedBox(
              height: 300,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CardSlider(
                    imageUrl: 'assets/images/img-slider1.jpg',
                    title: 'John Wick 4',
                    tag: 'Action. Crime',
                    rate: [
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                    ],
                  ),
                  const CardSlider(
                    imageUrl: 'assets/images/img-slider2.jpg',
                    title: 'Bohemian',
                    tag: 'Documentary',
                    rate: [
                      Icon(Icons.star, color: AppColors.greyStar, size: 18),
                      Icon(Icons.star, color: AppColors.greyStar, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                    ],
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                "From Disney",
                style: TextStyles.titleList,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              child: ListView(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CardFromDisney(
                    imageUrl: 'assets/images/img-disney1.jpg',
                    title: 'Mulan Session',
                    tag: 'History War',
                    rate: [
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.greyStar, size: 18),
                      Icon(Icons.star, color: AppColors.greyStar, size: 18),
                    ],
                  ),
                  const CardFromDisney(
                    imageUrl: 'assets/images/img-disney2.jpg',
                    title: 'Beauty & Beast',
                    tag: 'Sci - Fiction',
                    rate: [
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                      Icon(Icons.star, color: AppColors.yellow, size: 18),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
