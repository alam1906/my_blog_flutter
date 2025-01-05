import 'package:flutter/material.dart';
import 'package:my_blog/presentation/ui/desktop_layout/home_desktop.dart';
import 'package:my_blog/presentation/ui/mobile_layout/home_mobile.dart';
import 'package:my_blog/presentation/ui/tablet_layout/home_tablet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Blog',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.dark_mode),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 500) {
            return const HomeMobile();
          } else if (constraints.maxWidth > 500 && constraints.maxWidth < 800) {
            return const HomeTablet();
          } else {
            return const HomeDesktop();
          }
        },
      ),
    );
  }
}
