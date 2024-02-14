import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'community.dart';
import 'info_page.dart';

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
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Container(child: const Text('Rewards Page')),
            InfoPage(),
            Container(child: const Text('Capture Page')),
            CommunityPage(),
            Container(child: const Text('Profile Page')),
          ],
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          const <int, dynamic>{3: '99+'},
          style: _tabStyle,
          items: <TabItem>[
            for (final entry in _kPages.entries)
              TabItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: _kPages.keys.toList().indexOf(entry.key) ==
                              selectedIndex
                          ? 50.0
                          : 0.0,
                      height: _kPages.keys.toList().indexOf(entry.key) ==
                              selectedIndex
                          ? 50.0
                          : 0.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _kPages.keys.toList().indexOf(entry.key) ==
                                  selectedIndex
                              ? const Color(0xFF005BC4)
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                    ),
                    Icon(
                      entry.value,
                      color: _kPages.keys.toList().indexOf(entry.key) ==
                              selectedIndex
                          ? const Color(0xFF005BC4)
                          : Colors.black,
                      size: _kPages.keys.toList().indexOf(entry.key) ==
                              selectedIndex
                          ? 30.0 // size when selected
                          : 24.0, // default size
                    ),
                  ],
                ),
                title: entry.key,
              ),
          ],
          height: 60,
          backgroundColor: Colors.green,
          onTap: (int i) {
            if (i == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommunityPage()),
              );
            } else {
              setState(() {
                selectedIndex = i;
              });
              print('click index=$i');
            }
          },
        ),
      ),
    );
  }
}
