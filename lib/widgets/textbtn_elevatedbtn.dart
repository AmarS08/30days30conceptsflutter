import 'package:flutter/material.dart';

class TextButton_ElevatedButton extends StatelessWidget {
  const TextButton_ElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text and Elevated Button'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.all(20),
                ),
                elevation: MaterialStateProperty.all(10),
                overlayColor: MaterialStateProperty.all(Colors.red),
                shadowColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
              ),
              onPressed: () {
                print("Text Button is pressed");
              },
              child: Text(
                "This is a TextButton",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              onPressed: () {
                print("This is an Elevated Button");
              },
              child: Text(
                "This is a Elevated button",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
