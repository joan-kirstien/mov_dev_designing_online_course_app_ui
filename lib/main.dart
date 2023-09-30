import 'package:designing_online_course_app_ui_borja/screens/screens.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff29274f)
        ),
        home: const HomeScreen(),

    );
  }
}