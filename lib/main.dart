import 'package:flutter/material.dart';
import 'package:mkulima/src/screens/home_screen.dart';
import 'package:mkulima/src/screens/login_screen.dart';
import 'package:mkulima/src/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff07480E);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mkulima app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF07480E),
          secondary: const Color(0xFF07480E),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
