import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Widget"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              enableDrag: false,
              backgroundColor: Theme.of(context).primaryColorLight,
              showDragHandle: true,
              isDismissible: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("Amar Liskes Orange"),
                    ),
                    ListTile(
                      title: Text("Banana"),
                      subtitle: Text("Sanjay Liskes Orange"),
                    ),
                    ListTile(
                      title: Text("Apple"),
                      subtitle: Text("Darshan Liskes Orange"),
                    ),
                    ListTile(
                      title: Text("Mango"),
                      subtitle: Text("Chethan Liskes Orange"),
                    ),
                    ListTile(
                      title: Text("Pineapple"),
                      subtitle: Text("Amar Liskes Orange"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Show Modal Bottom Sheet"),
        ),
      ),
    );
  }
}
