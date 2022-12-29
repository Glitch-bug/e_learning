import 'package:flutter/material.dart';
import 'package:e_learning/home/e_search.dart';
import 'package:e_learning/home/r_search.dart';

class Search extends StatefulWidget{
  const Search({super.key});

  @override 
  State<Search> createState()=> _SearchState();
  
} 

class _SearchState extends State<Search>{
  int currentPage = 0;
  
  List<Widget> pages = [
    const EmptSearch(),
    const ResSearch(),
  ];
  var base;
  @override 
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffFFF1F3),
                  label: const Text(
                    "Graphic Illustration"
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                    ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  suffixIcon: Image.asset("images/icons/Search.png"),
                ),
                onChanged: (value) => {
                  (value == "")?
                  setState(() {
                    currentPage = 0;
                  }):setState(() {
                    currentPage = 1;
                  }),
                },
                
              ),
            ),
            base = pages[currentPage], 
          ],
        ),
      ),
    );
  }
}