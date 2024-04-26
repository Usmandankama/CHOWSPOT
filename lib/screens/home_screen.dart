import 'package:chow_spot/widgets/test_container_2.dart';
import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/categories_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: colors.primaryColor,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                decoration: BoxDecoration(color: colors.secondarColor),
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Container(
                // padding: const EdgeInsets.all(10),
                height: 150,
                // color: Colors.white30,
                child: const CategoriesWidget()),
            const SizedBox(height: 20),
            const Column(
              children: [
                TestContainer2(),
                TestContainer2(),
                TestContainer2(),
                TestContainer2(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        curve: Curves.decelerate,
        backgroundColor: colors.complementaryColor,
        padding: const EdgeInsets.all(25),
        color: Colors.black54,
        tabBackgroundColor: Colors.white30,
        gap: 8,
        activeColor: Colors.black,
        tabs: const [
          GButton(icon: Icons.home_rounded, text: "Home"),
          GButton(icon: Icons.search_rounded, text: "Search"),
          GButton(icon: Icons.settings_rounded, text: "Settings"),
        ],
      ),
    );
  }
}
