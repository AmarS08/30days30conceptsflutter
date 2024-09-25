import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thirtyconcepts/widgets/day24.dart';
import 'package:thirtyconcepts/widgets/day25.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDZTJpOXZZLyIp911cazbWlkSvGhVQBmQk',
          appId: '1:79026963147:android:14a137d0fd7a8776c3514e',
          messagingSenderId: '79026963147',
          projectId: 'thirtydaysthirtyconcepts'),
    );
  } else if (Platform.isIOS) {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter 30 Widgets',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepPurple,
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const DataBaseOptions();
            } else {
              return Day24Authentication();
            }
          },
        )
        //const DataBaseOptions(),
        // Day24Authentication(),
        //const Day20UI(),
        //const Day19UI(),
        //const LocationFinderPackage(),
        //const ImagePickerPackage(),
        //const TabBarWidget(),
        //const StackPositionedWidget(),
        //const Forms(),
        //const DropDownWidget(),
        //const BottomNavigationBarWidget(),
        // const AnimatedText(),
        //const BottomSheetWidget(),
        //const AlertDialogWidget(),
        //const ImageWidget(),
        //const DrawerWidget(),
        //const DismissibleWidget(),
        //const SnackBarWidget(),
        //const ContainerSizedBox(),
        //const RowsColumns(),
        // const TextButton_ElevatedButton(),
        //const ListView_GridView(),
        );
  }
}
