import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:ecoera/screens/community.dart';
import 'package:ecoera/screens/profile.dart';
import 'package:ecoera/screens/info_page.dart';

const _kPages = <String, IconData>{
  'Rewards': Icons.card_giftcard,
  'Info': Icons.info,
  'Capture': Icons.camera_alt_rounded,
  'Comm': Icons.people,
  'Profile': Icons.person,
};

class ConvexAppExample extends StatefulWidget {
  const ConvexAppExample({Key? key}) : super(key: key);

  @override
  _ConvexAppExampleState createState() => _ConvexAppExampleState();
}

class _ConvexAppExampleState extends State<ConvexAppExample> {
  final TabStyle _tabStyle = TabStyle.reactCircle;
  int selectedIndex = 2;

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
      home: const LoginPage(),
    );
  }
}
