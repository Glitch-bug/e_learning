import "package:flutter/material.dart";
import "package:e_learning/home/section.dart";


class Saved extends StatefulWidget{
  bool empty = false;
  @override 
  _SavedState createState() => _SavedState();
}


class _SavedState extends State<Saved>{

  @override
  Widget build(BuildContext context){
    return (widget.empty)? const Empty(): const Popul();
  }
}

class Empty extends StatelessWidget{
  const Empty({super.key});

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 104, 0, 50),
            child: Image.asset("images/rookr.png"),
          ),
          SizedBox(
            width: 331,
            height: 114,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Nothing is here",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),

                Text(
                  "We found nothing in your save list! Want to have some? Try something best",
                  style: TextStyle(
                    fontSize:14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: GreyButton(text: "Recommended",)
          ), 
            
        ],
      ),
    );
  }
}

class Popul extends StatelessWidget{
  const Popul({super.key});

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20),
      child:Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 30.0, 0, 50),
            child: Text(
              "My save list",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500
              )
            ),
          ),
          ListItem(image: "images/s1.png", title: "Adobe illustrator for all beginner artist", author: "Samuel Doe"),
          ListItem(image: "images/s2.png", title: "Digital illustration technique for procrete", author: "Sarah Morry"),
          ListItem(image: "images/s3.png", title: "Learn how to draw cartoon face in easy way", author: "Sarah Morry"),
          ListItem(image: "images/s4.png", title: "Sketchbook essential for everyone", author: "Sarah Morry"),
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: GreyButton(text: "Add more",)
          ),
        ],
      )
    );
  }
}