import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.deepPurpleAccent,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                child: Text(
                  "chats",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                ),
                child: Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                child: Text(
                  "chats",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                ),
                child: Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                child: Text(
                  "chats",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                ),
                child: Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text(
                  "Chats",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Chats",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Chats",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
