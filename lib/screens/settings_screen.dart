import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        foregroundColor: colors.tittleTextColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            // color: colors.tittleTextColor,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile Settings',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colors.textColor,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: Text(
                'Edit Profile',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: colors.textColor,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: colors.textColor,
              ),
              onTap: () {
                // Navigate to edit profile screen
              },
            ),
            Divider(color: colors.textColor),
            const SizedBox(height: 20),
            Text(
              'App Settings',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colors.textColor,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: Text(
                'Dark Mode',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: colors.textColor,
                ),
              ),
              trailing: Switch(
                value: true, // Replace with actual value from settings
                onChanged: (value) {
                  // Implement dark mode toggle functionality
                },
              ),
            ),
            Divider(color: colors.textColor),
            const SizedBox(height: 20),
            Text(
              'About',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colors.textColor,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: colors.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
