import "package:flutter/material.dart";
import "package:e_learning/home/home.dart";
import "package:e_learning/home/search.dart";
import "package:e_learning/saved/saved.dart";
import "package:e_learning/student/student.dart";

class Frame extends StatefulWidget{
  const Frame({super.key});

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  int currentPage = 0;
  List<Widget> pages = [
    const Home(),
    const Search(),
    Saved(),
    Student(),
  ];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Image.asset("images/icons/Some.png"), label: "Home"),
          NavigationDestination(icon: Image.asset("images/icons/Search.png"), label: "Search",),
          NavigationDestination(icon: Image.asset("images/icons/Bookmark.png"), label: "Saved",),
          NavigationDestination(icon: Image.asset("images/icons/User.png"), label: "Profile",)
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
        
        ),
    );
  }
}