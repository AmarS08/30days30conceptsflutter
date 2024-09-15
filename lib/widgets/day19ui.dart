import 'package:flutter/material.dart';

class Day19UI extends StatefulWidget {
  const Day19UI({super.key});

  @override
  State<Day19UI> createState() => _Day19UIState();
}

class _Day19UIState extends State<Day19UI> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    // height: (height / 2),
                    height: 450,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://imgs.search.brave.com/9Jw4U9sNR-VAYxYlGWRuH-ArazbAyCpSgQ5ndG8sZ64/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93cml0/aW5nZXhlcmNpc2Vz/LmNvLnVrL2ltYWdl/cy9tb2JpbGUvd2F0/ZXJmYWxsLWJveS5q/cGc"))),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://imgs.search.brave.com/vV6ngr46XGVdBKB5gxlySrZIuUjcwTXHQU7jWAvADWM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMucGV4ZWxzLmNv/bS9waG90b3MvMTg0/NzE4MTcvcGV4ZWxz/LXBob3RvLTE4NDcx/ODE3L2ZyZWUtcGhv/dG8tb2YtcGVyc29u/LXdlYXJpbmctYS1z/dHVkZGVkLW1hc2st/cGxheWluZy1jaGVz/cy5qcGVnP2F1dG89/Y29tcHJlc3MmY3M9/dGlueXNyZ2ImZHBy/PTEmdz01MDA"),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 10,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 60,
                          right: 20,
                          child: Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: width,
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Madrid City for designers",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This is a random Text Description",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade400,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RowIconText("20", Icons.favorite_rounded),
                  RowIconText("34", Icons.upload),
                  RowIconText("82", Icons.message),
                  RowIconText("295", Icons.face),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, "),
            )
          ],
        ),
      ),
    );
  }

  Widget RowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon),
      ],
    );
  }
}
