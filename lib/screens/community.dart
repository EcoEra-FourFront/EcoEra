// ignore_for_file: unused_import, unnecessary_import

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Community(),
    );
  }
}

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:15),
            child: Column(
                    children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  // increse the size of icon
            
                  child: const SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.home),
                  ),
                ),
                // spacer
            
                const Text(
                  'Community',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway",
                    // color: add #012C5E this color to text
                    color: Color(0xFF012C5E),
                  ),
                ),
            
                // icon from assets 'logo_without_name.png'
                Image.asset(
                  'assets/icons/logo_without_name.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            
            //spacer
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/ewcycle.png',
                  height: 182.0,
                  width: 350.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDEEDFF),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Colors.black
                              .withOpacity(0.2), // Slightly black border
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/microsoft.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text(
                                  "Microsoft ending Windows 10 support could turn 240 million PCs into e-waste",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Raleway",
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.srcIn,
                                        ),
                                        child: Image.asset(
                                          'assets/images/Vector.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.srcIn,
                                        ),
                                        child: Image.asset(
                                          'assets/images/lets-icons_view.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDEEDFF),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Colors.black
                              .withOpacity(0.2), // Slightly black border
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/Chennai.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text(
                                  'E-waste collection campaign launched in Chennai',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Raleway",
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.srcIn,
                                        ),
                                        child: Image.asset(
                                          'assets/images/Vector.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.srcIn,
                                        ),
                                        child: Image.asset(
                                          'assets/images/lets-icons_view.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDEEDFF),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Colors.black
                              .withOpacity(0.2), // Slightly black border
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/Dump.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Dump and donate: Month-long e-waste collection drive across 120 cities launched',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Raleway",
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.srcIn,
                                        ),
                                        child: Image.asset(
                                          'assets/images/Vector.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      ColorFiltered(
                                        colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.srcIn,
                                        ),
                                        child: Image.asset(
                                          'assets/images/lets-icons_view.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
                    ],
                  ),
          )),
    );
  }
}
