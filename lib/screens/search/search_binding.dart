import 'package:get/get.dart';
import 'package:moviez_streaming_app/screens/search/search_controller.dart';

class SearchBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}