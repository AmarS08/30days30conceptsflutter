import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Widget"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                action: SnackBarAction(
                    label: 'Undo', textColor: Colors.red, onPressed: () {}),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                behavior: SnackBarBehavior.floating,
                // padding: EdgeInsets.all(20),
                duration: const Duration(milliseconds: 3000),
                backgroundColor: Colors.blueAccent.shade400,
                content: Text('This is an Error'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Show Snackbar'),
          ),
        ),
      ),
    );
  }
}
