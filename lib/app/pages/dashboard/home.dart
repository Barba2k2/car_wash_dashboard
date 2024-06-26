import 'package:flutter/material.dart';

import 'widgets/main_content/main_content.dart';
import 'widgets/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

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
              drawer: Drawer(
                child: NavBar(
                  selectedIndexNotifier: _selectedIndexNotifier,
                ),
              ),
              body: const MainContent(),
            );
          } else {
            return Row(
              children: [
                NavBar(
                  selectedIndexNotifier: _selectedIndexNotifier,
                ),
                const Expanded(
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
