import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPackage extends StatefulWidget {
  const ImagePickerPackage({super.key});

  @override
  State<ImagePickerPackage> createState() => _ImagePickerPackageState();
}

class _ImagePickerPackageState extends State<ImagePickerPackage> {
  final ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Widget"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            color: Colors.grey.shade200,
            child: Center(
              child: (file == null)
                  ? Text(
                      "Image not Picked",
                      style: TextStyle(fontSize: 25),
                    )
                  : Image.file(
                      File(
                        file!.path,
                      ),
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final XFile? photo =
                  await _picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = photo;
              });
              print("Image picked");
              print(photo!.path);
            },
            child: Text("Pick Image"),
          ),
          ElevatedButton(
            onPressed: () async {
              final List<XFile>? photos = await _picker.pickMultiImage();
              setState(() {
                files = photos;
              });
              for (int i = 0; i < files!.length; i++) {
                print(files![i].path);
              }
            },
            child: Text("Click MultipleImages"),
          ),
        ],
      )),
    );
  }
}
