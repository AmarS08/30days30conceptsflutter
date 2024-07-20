import 'package:flutter/material.dart';

class StackPositionedWidget extends StatelessWidget {
  const StackPositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack & Positioned"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/Lankadishwara.jpg"),
                ),
              ),
              // child: Image.asset(),
            ),
          ),
          Positioned(
            top: 20,
            left: 40,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
          ),
        ],
      ),

      /*Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                left: 50,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.yellow,
                ),
              ),
              Positioned(
                top: 40,
                right: 70,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
              ),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}
