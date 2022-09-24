import 'package:get/get.dart';
import 'package:moviez_streaming_app/screens/home/home_controller.dart';
import 'package:moviez_streaming_app/screens/search/search_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<SearchController>(SearchController());
  }
}