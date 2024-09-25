import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thirtyconcepts/functions/databaseFunctions.dart';
import 'package:thirtyconcepts/pages/pets.dart';

class DataBaseOptions extends StatefulWidget {
  const DataBaseOptions({super.key});

  @override
  State<DataBaseOptions> createState() => _DataBaseOptionsState();
}

class _DataBaseOptionsState extends State<DataBaseOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataBase Options"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await create('Pets', 'blue', 'black', 'bull', 12);
                },
                child: Text("Create"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await update('Pets', 'tom', 'animal', 'tiger');
                },
                child: Text("Update"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PetsList()));
                },
                child: Text("Retrieve"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await delete('Pets', 'kitty');
                },
                child: Text("Delete"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
