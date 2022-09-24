import 'package:get/get.dart';
import 'package:moviez_streaming_app/screens/home/home_screen.dart';

class SplashController extends GetxController {
  @override
  // ignore: unnecessary_overrides
  void onInit() async {
    Future.delayed(const Duration(milliseconds: 1500))
        .then((value) => Get.to(() => const HomeScreen()));
    super.onInit();
  }
}
