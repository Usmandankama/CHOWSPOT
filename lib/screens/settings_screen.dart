import 'package:chow_spot/screens/edit_profile_screen.dart';
// import 'package:chow_spot/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
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
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                tileColor: Colors.white12,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfileScreen(),
                    ),
                  );
                },
              ),
            ),
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
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SwitchListTile(
                title: Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: colors.textColor,
                  ),
                ),
                activeColor: colors.accentColor,
                value: true, // Replace with actual value from settings
                onChanged: (value) {
                  // Implement dark mode toggle functionality
                },
              ),
            ),
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
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: colors.textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
