import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

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
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
             const SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
             const SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
             const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // TODO: Implement forgot password functionality
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
             const  SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement login functionality
                  },
                  child: const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Text('Login',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ),
               const SizedBox(height: 10.0),
               const Divider(
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
                      try {
                        GoogleAuthProvider googleAuthProvider =
                            GoogleAuthProvider();
                        _auth.signInWithProvider(googleAuthProvider);
                        print("done");
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),
                  const  SizedBox(width: 10.0), // Add some space between the buttons
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
