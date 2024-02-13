import 'package:ecoera/community.dart';
import 'package:ecoera/firebase_options.dart';
import 'package:ecoera/screens/homescreen.dart';
import 'package:ecoera/screens/loginpage.dart';
import 'package:ecoera/screens/mapscreen.dart';
import 'package:ecoera/info_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoEra',
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.green,
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:const CommunityPage(),
    );
  }
}
