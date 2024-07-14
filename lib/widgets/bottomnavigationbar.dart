import 'package:flutter/material.dart';
import 'package:thirtyconcepts/widgets/alertdialog.dart';
import 'package:thirtyconcepts/widgets/bottomsheet.dart';
import 'package:thirtyconcepts/widgets/dissmissible.dart';
import 'package:thirtyconcepts/widgets/snackbar.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;

  PageController pageController = PageController();
  /*List<Widget> Widgets = [
    Text("Home"),
    Text("Search"),
    Text("ADD"),
    Text("Profile"),
  ];*/

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.purpleAccent,
      ),*/
      body: PageView(
        controller: pageController,
        children: [
          AlertDialogWidget(),
          DismissibleWidget(),
          BottomSheetWidget(),
          SnackBarWidget()
        ],
      ),
      /*Center(
        child: Widgets.elementAt(selectedIndex),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            tooltip: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "ADD",
            tooltip: "ADD",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            tooltip: "Profile",
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
      ),
    );
  }
}
