import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traveling_app/screens/welcome_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEDF2F6)
      ),
    );
  }
}