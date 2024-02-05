import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/logo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
              SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // TODO: Implement forgot password functionality
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement login functionality
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Login',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.black,
                thickness: 2.0, // Adjust the thickness (width) as needed
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    imagePath:
                        'assets/icons/google_logo.png', // Replace with your Google logo path
                    onPressed: () {
                      // Google button pressed action
                      print('Google Button Pressed');
                    },
                  ),
                  SizedBox(width: 10.0), // Add some space between the buttons
                  SocialButton(
                    imagePath:
                        'assets/icons/facebook_logo.png', // Replace with your Facebook logo path
                    onPressed: () {
                      // Facebook button pressed action
                      print('Facebook Button Pressed');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

class SocialButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SocialButton({
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
          imagePath,
          width: 40.0,
          height: 40.0,
        ),
      ),
    );
  }
}
