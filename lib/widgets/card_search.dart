import 'package:flutter/material.dart';

import '../constant/styles.dart';

class CardSearch extends StatelessWidget {
  const CardSearch({
    required this.imageUrl,
    required this.title,
    required this.tag,
    required this. rate,
    Key? key,
  }) : super(key: key);

  final String imageUrl, title, tag;
  final List<Icon> rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        children: [
          Container(
            height: 127,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              boxShadow: AppColors.shadow,
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              const SizedBox(height: 20),
              Row(
                children: rate,
              ),
            ],
          )
        ],
      ),
    );
  }
}
