import 'package:flutter/material.dart';

import 'widgets/main_content/main_content.dart';
import 'widgets/nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
              ),
              drawer: const Drawer(
                child: NavBar(),
              ),
              body: const MainContent(),
            );
          } else {
            return const Row(
              children: [
                NavBar(),
                Expanded(
                  child: MainContent(),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
