import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviez_streaming_app/constant/styles.dart';
import 'package:moviez_streaming_app/screens/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img-slider1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text("Moviez", style: TextStyles.title),
                Text(
                  "Watch much easier",
                  style: TextStyles.subtitle.copyWith(height: 1.75),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
