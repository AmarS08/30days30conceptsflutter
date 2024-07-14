import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Widget"),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.yellow,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/bRsR9O393mbTraoGH24tg5IUFi9wAOIyvTa6KMgTeZs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQxMDg5/NDQuanBn"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ravana",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Ravana@gmail.com",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.folder),
                title: Text(
                  "My Files",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.group),
                title: Text(
                  "Shared with me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.star),
                title: Text(
                  "Starred",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.delete),
                title: Text(
                  "Trash",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.cloud_upload),
                title: Text(
                  "Upload",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.share),
                title: Text(
                  "Share",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.logout),
                title: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Hey There"),
        ),
      ),
    );
  }
}
