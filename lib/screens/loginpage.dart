import 'package:ecoera/screens/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

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
              const SizedBox(height: 30.0),
              Text(
                'Welcome to EcoEra',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway",
                ),
              ),
              SizedBox(height: 30.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                      buttonSize: ButtonSize.medium,
                      width: 250.0,
                      btnColor: Color.fromARGB(255, 240, 240, 240),
                      buttonType: ButtonType.google,
                      onPressed: () {
                        try {
                          GoogleAuthProvider googleAuthProvider =
                              GoogleAuthProvider();
                          _auth.signInWithProvider(googleAuthProvider);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        } catch (e) {
                          print(e);
                        }
                      }),
                  SizedBox(height: 20.0),
                  SignInButton(
                      width: 250.0,
                      btnColor: Color.fromARGB(255, 240, 240, 240),
                      btnTextColor: Colors.black,
                      buttonSize: ButtonSize.medium,
                      buttonType: ButtonType.facebook,
                      onPressed: () {}),
                  SizedBox(height: 20.0),
                  SignInButton(
                      width: 250.0,
                      buttonSize: ButtonSize.medium,
                      btnColor: Color.fromARGB(255, 240, 240, 240),
                      btnTextColor: Colors.black,
                      buttonType: ButtonType.twitterX,
                      onPressed: () {}),
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
