import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class LocationFinderPackage extends StatefulWidget {
  const LocationFinderPackage({super.key});

  @override
  State<LocationFinderPackage> createState() => _LocationFinderPackageState();
}

class _LocationFinderPackageState extends State<LocationFinderPackage> {
  Position? position;
  fetchPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    String latitude;
    String longitude;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: "Location Services is Disabled");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "You denied The permission");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: "You denied the Permission Forever");
    }
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentPosition;
      longitude = currentPosition.longitude.toString();
      print(longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geo Location"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                (position == null)
                    ? "Location"
                    : "Location : ${position.toString()}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                fetchPosition();
              },
              child: Text("Get Location"),
            ),
          ],
        ),
      ),
    );
  }
}
