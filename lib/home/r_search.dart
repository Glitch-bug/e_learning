import 'package:e_learning/home/section.dart';
import "package:flutter/material.dart";
import "package:e_learning/home/f_search.dart";


class ResSearch extends StatelessWidget{
 const ResSearch({super.key});

 @override 
 Widget build(BuildContext context){
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 37),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Your search result"),
            IconButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (BuildContext context){
                    return const FiltSearch();
                  })
              );
            }, icon: Image.asset("images/icons/setting.png"))
          ],
        ),
      ),
      ListItem(image: "images/s1.png", title: "Adobe illustrator for all beginner artist", author: "Samuel Doe"),
      ListItem(image: "images/s2.png", title: "Digital illustration technique for procrete", author: "Sarrah Morry"),
      ListItem(image: "images/s3.png", title: "Learn how to draw cartoon face in easy way", author: "Sarrah Morry"),
      ListItem(image: "images/s4.png", title: "Sketch book essential for everyone", author: "Sarrah Morry"),
    ],
  );
 } 
}