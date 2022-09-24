import 'package:flutter/material.dart';

import '../constant/styles.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.tag,
    required this.rate,
  }) : super(key: key);

  final String imageUrl, title, tag;
  final List<Icon> rate;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: defaultPadding),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              boxShadow: AppColors.shadow,
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    title,
                    style: TextStyles.title,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    tag,
                    style: TextStyles.subtitle,
                  ),
                ],
              ),
              Row(
                children: rate,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
