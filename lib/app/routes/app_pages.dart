import 'package:get/get.dart';
import 'package:moviez_streaming_app/screens/home/home_binding.dart';
import 'package:moviez_streaming_app/screens/home/home_screen.dart';
import 'package:moviez_streaming_app/screens/search/search_binding.dart';
import 'package:moviez_streaming_app/screens/search/search_screen.dart';
import 'package:moviez_streaming_app/screens/splash/splash_binding.dart';
import 'package:moviez_streaming_app/screens/splash/splash_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: SplashScreen.routeName,
      binding: SplashBinding(),
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: HomeScreen.routeName,
      binding: HomeBinding(),
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: SearchScreen.routeName,
      binding: SearchBinding(),
      page: () => const SearchScreen(),
    ),
  ];
}
