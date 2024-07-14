import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = "Orange";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Widget'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.all(20),
                height: 70,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: DropdownButton<String>(
                  underline: Divider(),
                  dropdownColor: Colors.yellow,
                  isExpanded: true,
                  icon: Icon(Icons.arrow_downward),
                  value: selectedValue,
                  items: <String>[
                    'Orange',
                    'Apple',
                    'Banana',
                    'Mango',
                    'Grapes',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newvalue) {
                    setState(() {
                      selectedValue = newvalue ?? 'Orange';
                    });
                  },
                ))
          ],
        ),
      ),
    );
  }
}
