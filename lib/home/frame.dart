import "package:flutter/material.dart";
import "package:e_learning/home/home.dart";
import "package:e_learning/home/search.dart";
import "package:e_learning/saved/saved.dart";

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
    Saved()
  ];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Image.asset("images/icons/Some.png"), label: ""),
          NavigationDestination(icon: Image.asset("images/icons/Search.png"), label: "",),
          NavigationDestination(icon: Image.asset("images/icons/Bookmark.png"), label: "",),
          NavigationDestination(icon: Image.asset("images/icons/User.png"), label: "",)
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