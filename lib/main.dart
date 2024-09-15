import 'package:flutter/material.dart';
import 'package:thirtyconcepts/widgets/day20ui.dart';

void main() {
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
      home: const Day20UI(),
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
