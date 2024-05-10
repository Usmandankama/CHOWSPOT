import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;
import '../model/Categories.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Categories> categoriesList = [
    Categories(
      text: 'Pizza',
      image: 'assets/icons/pizza.png',
    ),
    Categories(
      text: 'Ramen',
      image: 'assets/icons/ramen.png',
    ),
    Categories(
      text: 'Burger',
      image: 'assets/icons/hamburger.png',
    ),
    Categories(
      text: 'Chicken',
      image: 'assets/icons/chicken.png',
    ),
    Categories(
      text: 'Vegan',
      image: 'assets/images/2.jpg',
    ),
    Categories(
      text: 'Ramen',
      image: 'assets/icons/ramen.png',
    ),
  ];
  Widget categoryItem(Categories category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(category.image),
          ),
          title: Text(
            category.text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: colors.textColor,
            ),
          ),
          
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: colors.accentColor,
            ),
            onPressed: () {
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        foregroundColor: colors.textColor,
        title: const Text('Categories'),
        centerTitle: true,
      ),
      backgroundColor: colors.primaryColor,
      body: ListView.builder(
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return categoryItem(categoriesList[index]);
        },
      ),
    );
  }
}
