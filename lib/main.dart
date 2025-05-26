import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_color_switch_app/appbar.dart';
import 'package:image_color_switch_app/content.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFFFFFF),
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: MyAppBar(), body: MyContent()),
    );
  }
}
