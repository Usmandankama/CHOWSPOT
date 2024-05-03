import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Favorites',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colors.textColor,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'No favorites yet.',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: colors.textColor,
          ),
        ),
      ),
    );
  }
}
