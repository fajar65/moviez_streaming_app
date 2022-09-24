import 'package:get/get.dart';
import 'package:moviez_streaming_app/screens/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}