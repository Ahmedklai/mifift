import 'package:flutter/material.dart';
import 'package:mifift/baseWidget.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mifift/ui/home/home.dart';
import 'ui/splash/splash.dart';
import 'constants/app_theme.dart';

void main() => runApp(
      MaterialApp(home: MyApp()), // Wrap your app
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return SplashScreen();
    });
  }
}
