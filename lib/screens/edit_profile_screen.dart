import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colors.textColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            const SizedBox(height: 20),
            Text(
              'Full Name',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: colors.textColor,
              ),
            ),
            TextField(
              style: TextStyle(color: colors.textColor),
              decoration: InputDecoration(
                hintText: 'John Doe',
                hintStyle: TextStyle(color: colors.textColor),
                filled: true,
                fillColor: Colors.white54,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.textColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.accentColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Email Address',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: colors.textColor,
              ),
            ),
            TextField(
              style: TextStyle(color: colors.textColor),
              decoration: InputDecoration(
                hintText: 'john.doe@example.com',
                hintStyle: TextStyle(color: colors.textColor),
                filled: true,
                fillColor: Colors.white54,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.textColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.accentColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement save button functionality
              },
              style: ElevatedButton.styleFrom(
                primary: colors.accentColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.save, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Save Changes',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
