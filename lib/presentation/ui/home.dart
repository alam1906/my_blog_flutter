import 'package:flutter/material.dart';
import 'package:my_blog/presentation/ui/mobile_layout/home_mobile.dart';
import 'package:my_blog/presentation/ui/tablet_layout/home_tablet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1100),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth <= 700) {
                return const HomeMobile();
              } else {
                return HomeTablet();
              }
            },
          ),
        ),
      ),
    );
  }
}
