import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviez_streaming_app/app/modules/root_binding.dart';
import 'package:moviez_streaming_app/app/routes/app_pages.dart';
import 'package:moviez_streaming_app/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Moviez Streaming',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Avenir',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialBinding: RootBinding(),
      getPages: AppPages.pages,
    );
  }
}
