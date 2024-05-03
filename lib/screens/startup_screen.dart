import 'package:chow_spot/screens/login_screen.dart';
import 'package:chow_spot/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Center(
            child: Text(
              'chowspot',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                letterSpacing: 2,
              ),
            ),
          ),
          const Text(
            'navigating your belly to hapiness',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              elevation: const MaterialStatePropertyAll(5),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 15,
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(
                colors.accentColor,
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text(
              'login',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(height: 5),
          TextButton(
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(
                  horizontal: 90,
                  vertical: 15,
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
            child: const Text(
              'create an account ',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
