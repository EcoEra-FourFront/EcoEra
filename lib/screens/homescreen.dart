import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        // Add the body here
        
        body: 
        Center(
// add some space between the edge of the screen and the container

          child: Column(
            children: [
              const Center(

                child:  Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 8.0, bottom: 8.0),
                    child: Text(
                      "Hello User!",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ), // horizontal space
                  Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.blue,
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                height: 200,
                padding: const EdgeInsets.all(20),
                // how to add box shadow to the container
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
