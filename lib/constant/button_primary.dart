import 'package:flutter/material.dart';
import 'package:moviez_streaming_app/constant/styles.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: const Size(220, 50),
  primary: AppColors.darkBlue,
  shadowColor: Colors.transparent,
  elevation: 0.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(100),
  ),
);
