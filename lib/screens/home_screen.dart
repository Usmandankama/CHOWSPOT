import 'package:chow_spot/widgets/food_widget.dart';
import 'package:chow_spot/widgets/test_container_2.dart';
import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/categories_widget.dart';
import '../widgets/offers_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: colors.primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 20),
            const Text(
              'HOME',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
            ),
            IconButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                backgroundColor: MaterialStatePropertyAll(Colors.red),
              ),
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_rounded),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(15)),
              child: const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Search chowspot',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search_rounded, size: 30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 180,
              child: OffersWidget(),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(fontFamily: "Poppins", fontSize: 18),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black54,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                  child: CategoriesWidget(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Featured',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 500,
              // color: Colors.black,
              child: FoodWidget(),
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
        selectedIndex: current_index,
        tabs: const [
          GButton(icon: Icons.home_rounded),
          GButton(icon: Icons.restaurant_menu_rounded),
          GButton(icon: Icons.favorite_border_rounded),
          GButton(icon: Icons.settings_rounded),
        ],
      ),
    );
  }
}
