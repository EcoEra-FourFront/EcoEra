import 'package:flutter/material.dart';

// Community page widget
class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/home.png',
                  height: 50.0,
                  width: 50.0,
                ),
              ),
              Text(
                'Community',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/logo_noname.png',
                height: 50.0,
                width: 50.0,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              16.0, statusBarHeight + 16.0, 16.0, 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'assets/images/ewcycle.png',
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16.0),
                DisplayWithInfo(
                  context: context,
                  imagePath: 'assets/images/microsoft.png',
                  text:
                      'Microsoft ending Windows 10 support could turn 240 million PCs into e-waste',
                ),
                SizedBox(height: 16.0),
                DisplayWithInfo(
                  context: context,
                  imagePath: 'assets/images/Chennai.png',
                  text: 'E-waste collection campaign launched in Chennai',
                ),
                SizedBox(height: 16.0),
                DisplayWithInfo(
                  context: context,
                  imagePath: 'assets/images/Dump.png',
                  text:
                      'Dump and donate: Month-long e-waste collection drive across 120 cities launched',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DisplayWithInfo({
    required BuildContext context,
    required String imagePath,
    required String text,
  }) {
    return Container(
      height: 100.0,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                print('Error loading image: $error');
                return Center(
                  child: Text(
                    'Image Error',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              },
            ),
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
