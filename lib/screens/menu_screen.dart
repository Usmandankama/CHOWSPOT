import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Menu',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colors.textColor,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          6,
          (index) {
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: colors.textColor,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
