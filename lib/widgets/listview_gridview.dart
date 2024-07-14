import 'package:flutter/material.dart';

class ListView_GridView extends StatefulWidget {
  const ListView_GridView({super.key});

  @override
  State<ListView_GridView> createState() => _ListView_GridViewState();
}

class _ListView_GridViewState extends State<ListView_GridView> {
  List<String> fruits = [
    'Orange',
    'Apple',
    'Mango',
    'Banana',
    'Pineapple',
    'JackFruit'
  ];
  Map fruits_person = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana', 'Pineapple', 'JackFruit'],
    'names': ['Karan', 'Johar', 'Manish', 'Pandya', 'Babblu', 'Golu']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List and Grid'),
          backgroundColor: Colors.red,
          // elevation: 8,
        ),
        body: GridView.builder(
          itemCount: fruits.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(fruits_person['fruits'][index]),
                  subtitle: Text(fruits_person['names'][index]),
                ),
              ),
            );
          },
        )
        /*GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2 / 3),
        children: [
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
          Card(
            child: Center(child: Text('Orange')),
          ),
        ],
      ),*/
        /*ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                print(fruits_person['fruits'][index]);
              },
              leading: Icon(Icons.person),
              title: Text(fruits_person['fruits'][index]),
              subtitle: Text(fruits_person['names'][index]),
            ),
          );
        },
      ),*/
        );
  }
}
