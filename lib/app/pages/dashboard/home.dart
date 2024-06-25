import 'package:flutter/material.dart';

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
              body: Container(
                width: double.infinity,
                color: const Color(0xFFF2F2F9),
                child: const Center(
                  child: Text('Main Content Area'),
                ),
              ),
            );
          } else {
            return Row(
              children: [
                const NavBar(),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: const Color(0xFFF2F2F9),
                    child: const Center(
                      child: Text('Main Content Area'),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
