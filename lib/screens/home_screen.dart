import 'package:chow_spot/screens/favourites_screen.dart';
import 'package:chow_spot/screens/menu_screen.dart';
import 'package:chow_spot/screens/settings_screen.dart';
import 'package:chow_spot/widgets/food_widget.dart';
import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;
import 'package:google_nav_bar/google_nav_bar.dart';
import '../widgets/categories_widget.dart';
import '../widgets/offers_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [
    const HomePage(),
    const MenuScreen(),
    const FavouritesScreen(),
    const SettingsScreen(),
  ];
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[current_index],
        bottomNavigationBar: GNav(
          curve: Curves.bounceInOut,
          backgroundColor: colors.complementaryColor,
          padding: const EdgeInsets.all(20),
          color: Colors.black54,
          tabBackgroundColor: const Color.fromARGB(41, 255, 255, 255),
          gap: 8,
          activeColor: Colors.black,
          selectedIndex: current_index,
          onTabChange: (value) {
            setState(() {
              current_index = value;
            });
          },
          tabs: const [
            GButton(icon: Icons.home_rounded),
            GButton(icon: Icons.restaurant_menu_rounded),
            GButton(icon: Icons.favorite_border_rounded),
            GButton(icon: Icons.settings_rounded),
          ],
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Text(
                'HOME',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: colors.tittleTextColor,
                    letterSpacing: 2),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
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
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
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
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          color: colors.tittleTextColor,
                        ),
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Featured',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                    color: colors.tittleTextColor,
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
        ));
  }
}
