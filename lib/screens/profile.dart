import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Profile Image and options
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: Colors.grey[200],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/profile.png'),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          // List of options
                          _buildOption('Edit Profile', () {}),
                          _buildOption('Recycling History', () {}),
                          _buildOption('Settings', () {}),
                          _buildOption('Change Email', () {}),
                          _buildOption('Change Password', () {}),
                          _buildOption('Log Out', () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Home and Logo icons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to home screen
                    },
                    child:const  SizedBox(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.home),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/logo_without_name.png',
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String title, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Text(
          title,
          style:const  TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
