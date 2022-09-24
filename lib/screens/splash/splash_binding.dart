import 'package:get/get.dart';
import 'package:moviez_streaming_app/screens/splash/splash_controller.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}