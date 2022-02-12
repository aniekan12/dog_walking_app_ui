import 'package:dog_walking_app_ui/views/splash/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  showDebugPrint();
  runApp(const MyApp());
}

//to turn off debugprint in release mode
void showDebugPrint() {
  if (kReleaseMode) debugPrint = (String? message, {int? wrapWidth}) {};
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Walker',
      theme: ThemeData(
        fontFamily: 'Inter',
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashScreen(),
      },
    );
  }
}
