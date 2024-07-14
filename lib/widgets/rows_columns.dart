import 'package:flutter/material.dart';

class RowsColumns extends StatelessWidget {
  const RowsColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Rows and Columns'),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.red,
                child: Container(),
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.blue,
                child: Container(),
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.green,
                child: Container(),
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.black,
                child: Container(),
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.purple,
                child: Container(),
              ),
            ],
          )
          /*Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.purple,
              child: Container(),
            ),
          ],
        ),*/
          /*Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
              child: Container(),
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.purple,
              child: Container(),
            ),
          ],
        ),*/
          ),
    );
  }
}
