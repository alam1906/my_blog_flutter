import 'package:flutter/material.dart';
import 'package:my_blog/presentation/ui/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xfff6f8fb),
            appBarTheme: AppBarTheme(color: Color(0xfff6f8fb))),
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
