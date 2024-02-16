import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:ecoera/screens/community.dart';
import 'package:ecoera/screens/profile.dart';
import 'package:ecoera/screens/info_page.dart'; // Correct import here

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
    return Scaffold(
      appBar: AppBar(title: Text(_kPages.keys.toList()[selectedIndex])),
      body: _getPage(selectedIndex),
      bottomNavigationBar: ConvexAppBar.badge(
        const <int, dynamic>{3: '99+'},
        style: _tabStyle,
        items: <TabItem>[
          for (final entry in _kPages.entries)
            TabItem(
              icon: Icon(entry.value),
              title: entry.key,
            ),
        ],
        height: 60,
        backgroundColor: Colors.green,
        onTap: (int i) {
          setState(() {
            selectedIndex = i;
          });
          print('click index=$i');
        },
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Container(child: const Text('Rewards Page'));
      case 1:
        return InfoPage();
      case 2:
        return Container(child: const Text('Capture Page'));
      case 3:
        return const Community();
      case 4:
        return const ProfilePage();
      default:
        return Container();
    }
  }
}
