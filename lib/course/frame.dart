import "package:flutter/material.dart";

class CourseFrame extends StatefulWidget{
  const CourseFrame({super.key});

 @override 
 State<CourseFrame> createState() =>  _CourseFrameState();
}


class _CourseFrameState extends State<CourseFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon:Icon(Icons.arrow_back_ios)
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    )
                  ),
                  Image.asset("images/icons/Bookmark.png")
                ],
              )
            ],  
          ),
        )
      ),
    );
  }

}