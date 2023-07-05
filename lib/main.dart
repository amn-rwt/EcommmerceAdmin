import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_admin/TestView/testView.dart';
import 'package:ecommerce_admin/features/home/home_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.black87,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          textTheme: const TextTheme(
              labelSmall: TextStyle(
            color: Colors.white60,
          ))),

      // home: const TestView(),
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
