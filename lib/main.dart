import 'package:flutter/material.dart';
import 'package:mkulima/src/screens/home_screen.dart';
import 'package:mkulima/src/screens/login_screen.dart';
import 'package:mkulima/src/screens/register_screen.dart';
import 'package:mkulima/src/utils/colors_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = mainColor;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mkulima app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF07480E),
          secondary: const Color(0xFF07480E),
        ),
      ),
      home: SignUpScreen(),
      initialRoute: 'loginPage',
    );
  }
}
