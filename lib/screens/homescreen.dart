import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.symmetric(
             horizontal: 20,
            vertical: 4,
          ),
          child: Column(
            children: [
              const SizedBox(height: 9),
              SizedBox(
                height: 550,
                width: 411,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.blue,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: 173,
                          width: 353,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 64,
                            vertical: 19,
                          ),
                          child: const Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 132,
                                  width: 223,
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 57,
                                            right: 10,
                                            bottom: 12,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 46),
                                                child: Text(
                                                  "March",
                                                  style: TextStyle(fontSize: 8),
                                                ),
                                              ),
                                              SizedBox(height: 11),
                                              Text(
                                                "February",
                                                style: TextStyle(fontSize: 8),
                                              ),
                                              SizedBox(height: 11),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 48),
                                                  child: Text(
                                                    "April",
                                                    style:
                                                        TextStyle(fontSize: 8),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 14),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                  "May",
                                                  style: TextStyle(fontSize: 8),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 11),
                                  child: Text(
                                    "January",
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 21,
                        width: 143,
                        margin:const  EdgeInsets.only(top: 161),
                        color: Colors.grey[50],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding:const  EdgeInsets.only(top: 163),
                        child: Text(
                          "Monthly Analysis",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             const  SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}