
import 'package:flutter/material.dart';

import '../constant/styles.dart';

class SearchMovie extends StatelessWidget {
  const SearchMovie({
    Key? key,
    required this.searchController,
    required this.hinText,
  }) : super(key: key);

  final String hinText;

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: AppColors.darkBlue,
        hintText: hinText,
        filled: true,
        fillColor: AppColors.white,
        enabledBorder:  const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
          borderSide: BorderSide(color: AppColors.white),
        ),
      ),
    );
  }
}
