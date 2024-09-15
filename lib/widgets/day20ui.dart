import 'package:flutter/material.dart';

class Day20UI extends StatelessWidget {
  const Day20UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.white,
        title: Text(
          "wanda.s",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage('assets/ProfileImageDownload.jpg'),
                        ),
                        Text(
                          "Wanda.s",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Photographer / New York",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    profileDetails("150", "Posts"),
                                    profileDetails("5k", "Followers"),
                                    profileDetails("100", "Following"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue)),
                                      onPressed: () {},
                                      child: Text(
                                        "Follow",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blueAccent, width: 2),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.arrow_downward,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              // color: Colors.blue,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://imgs.search.brave.com/vV6ngr46XGVdBKB5gxlySrZIuUjcwTXHQU7jWAvADWM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMucGV4ZWxzLmNv/bS9waG90b3MvMTg0/NzE4MTcvcGV4ZWxz/LXBob3RvLTE4NDcx/ODE3L2ZyZWUtcGhv/dG8tb2YtcGVyc29u/LXdlYXJpbmctYS1z/dHVkZGVkLW1hc2st/cGxheWluZy1jaGVz/cy5qcGVnP2F1dG89/Y29tcHJlc3MmY3M9/dGlueXNyZ2ImZHBy/PTEmdz01MDA"),
                            fit: BoxFit.cover),
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text("Title"),
                  ],
                ),
              ),
            ),
            /*Container(
              height: 100,
              color: Colors.green,
            ),*/
            Expanded(
              child: GridView.builder(
                itemCount: 50,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) => Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80"),
                        fit: BoxFit.cover),
                  ),
                  margin: EdgeInsets.all(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String numberValue, valueName) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            numberValue,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            valueName,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      );
}
