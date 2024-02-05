// Import necessary packages and files
import 'package:flutter/material.dart';

// Community page widget
class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Community Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Add the top image without any text
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/ewcycle.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0), // Add spacing here

              // DisplayWithInfo widgets without text
              DisplayWithInfo(
                context: context,
                imagePath: 'assets/images/microsoft.png',
              ),
              SizedBox(height: 16.0), // Increase spacing here
              DisplayWithInfo(
                context: context,
                imagePath: 'assets/images/Chennai.png',
              ),
              SizedBox(height: 16.0), // Increase spacing here
              DisplayWithInfo(
                context: context,
                imagePath: 'assets/images/Dump.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // DisplayWithInfo widget
  Widget DisplayWithInfo({
    required BuildContext context,
    required String imagePath,
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
          // Left side image
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
          SizedBox(width: 8.0), // Increase spacing between image and text
          // Right side text
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: Text(
                'Sample text for DisplayWithInfo widget. Add your own content here.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
