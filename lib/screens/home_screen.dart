import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;
import 'package:chow_spot/screens/cart_screen.dart';
import 'package:chow_spot/widgets/categories_widget.dart';
import 'package:chow_spot/widgets/food_widget.dart';
import 'package:chow_spot/widgets/offers_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'favourites_screen.dart';
import 'menu_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = [
    const HomePage(),
    const MenuScreen(),
    const FavoritesScreen(),
    const SettingsScreen(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: GNav(
        curve: Curves.easeInOut,
        backgroundColor: colors.accentColor,
        padding: const EdgeInsets.all(20),
        color: Colors.black54,
        tabBackgroundColor: const Color.fromARGB(41, 255, 255, 255),
        gap: 8,
        activeColor: Colors.black,
        selectedIndex: currentIndex,
        onTabChange: (index) {
          setState(() {
            currentIndex = index;
          });
        },
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        elevation: 0,
        toolbarHeight: 60,
        centerTitle: true,
        title: Text(
          'HOME',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: colors.tittleTextColor,
            letterSpacing: 2,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
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
            const SizedBox(height: 180, child: OffersWidget()),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height:500,child: FoodWidget(),),
          ],
        ),
      ),
    );
  }
}
