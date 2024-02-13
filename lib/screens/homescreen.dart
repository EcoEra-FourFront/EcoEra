import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

const _kPages = <String, IconData>{
  'Rewards': Icons.card_giftcard,
  'Info': Icons.info,
  'Capture': Icons.camera_alt_rounded,
  'Comm': Icons.people,
  'Profile': Icons.person,
};

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConvexAppExample(),
    );
  }
}

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
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Row(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: Text(
                          "Hello User!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: IconButton(
                                icon: const Icon(Icons.person),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 320,
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 20,
                        ),
                      ),
                      // const SizedBox(
                      //   width: 100,
                      //   height: 10,
                      //   child: Row(
                      //     children: [
                      //       Text(
                      //         "Monthly Analysis",
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //add a space between the rows
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),


          bottomNavigationBar: ConvexAppBar.badge(
            const <int, dynamic>{3: ''},
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
              setState(() {
                selectedIndex = i;
              });
              print('click index=$i');
            },
          )),
    );
  }
}
