import 'package:flutter/material.dart';
import 'package:e_learning/home/section.dart';
import 'package:e_learning/student/settings/settings.dart';
import 'package:e_learning/student/settings/profile.dart';


class Student extends StatefulWidget{
  int pages = 0;
  List <Widget> tabs = [const Projects(),const  Courses(), const Following()];
  Student({super.key});

  @override 
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student>{
 
  @override 
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Stack(
            children: [
              Container(
                height: size.height * 0.25 + 60,
              ),
              Container(
                width: size.width,
                height: size.height * 0.25,
                decoration: const BoxDecoration(
                  color: Color(0xffB32318)
                ),
                
              ),
              const Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("images/st_profile.png")
                  ),
                ),
              ),
              Positioned.fill(
                right: 20,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: (){
                      setState((){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context){
                            return const Settings();
                          }
                        ));
                      });
                    },
                    icon: const Icon(Icons.settings_outlined, color: Colors.white,)),
                )
              )
            ],
          ),
    
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
            child: Text(
              "@isayef",
              style: TextStyle(
                fontSize:26,
                fontWeight: FontWeight.w500, 
              )
            ),
          ),
    
          const SizedBox(
            width: 194,
            child: Text(
              "Just simple guy who loves do something new and fun 😜",
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:15),
            child: SizedBox(
              width: 118,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/icons/Instagram1.png", width: 26,),
                  Image.asset("images/icons/facebook1.png", width: 26,),
                  Image.asset("images/icons/twitter1.png", width: 26,),
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: SizedBox(
              width: 282,
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 282/3,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2.0, color: (widget.pages == 0)?const Color(0xff265AE8):const Color(0xffE9EFFD) ), ),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          widget.pages = 0;
                        });
                      },

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "03",
                              style: TextStyle( 
                                fontSize: 16
                              )
                            ),
                          Text(
                            "Projects",
                            style: TextStyle( 
                              fontSize: 16
                            )
                          )
                          ],
                        ),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.pages = 1;
                      });
                    },
                    child: Container(
                      width: 282/3,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 2.0, color: (widget.pages == 1)?const Color(0xff265AE8):const Color(0xffE9EFFD)), ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "04",
                            style: TextStyle( 
                              fontSize: 16
                            )
                          ), 
                          Text(
                            "Courses",
                            style: TextStyle( 
                              fontSize: 16
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.pages = 2;
                      });
                    },
                    child: Container(
                      width: 282/3,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(width: 2.0, color: (widget.pages == 2)?const Color(0xff265AE8):const Color(0xffE9EFFD)), ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "20",
                            style: TextStyle( 
                              fontSize: 16
                            )
                          ), 
                          Text(
                            "Following",
                            style: TextStyle( 
                              fontSize: 16
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ), 
          widget.tabs[widget.pages],
        ]
      ),
    );
  }
}


class Projects extends StatelessWidget{
  const Projects({super.key});

  @override 
  Widget build(BuildContext context){
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        SizedBox(
          width: 160,
          height: 152,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset("images/Project1.png")
          )
        ),
        SizedBox(
          width: 160,
          height: 152,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset("images/Project2.png")
          )
        ),
        SizedBox(
          width: 160,
          height: 152,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset("images/Project3.png")
          )
        )
      ],
    );
  }
}

class Courses extends StatelessWidget{
  const Courses({super.key});

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListItem(image: "images/s1.png", title: "Adobe Illustrator for all beginner artist", author: "Samuel Doe"),
          ListItem(image:"images/s2.png", title: "Digital Illustration technique for procrete", author:"Sarrah Morry"),
          ListItem(image: "images/s3.png", title: "Learn how to draw cartoon face in an easy way", author: "Sarrah Morry"),
          ListItem(image: "images/s4.png", title: "Sketchbook essential for everyone", author: "Sarrah Morry")
        ],
      ),
    );
  }
}

class Following extends StatelessWidget{
  const Following({super.key});

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
      child: Column(
        children: [
          ListedProfile(image: "images/p1.png", username: "Samuel Jonas", handle: "jdoe", follows: false),
          ListedProfile(image: "images/p2.png", username: "Mohammed Salah", handle: "jdoe", follows: false),
          ListedProfile(image: "images/p3.png", username: "Afarat Jamil", handle: "jdoe", follows: false),
          ListedProfile(image: "images/p4.png", username: "Samuel Jonas", handle: "jdoe", follows: false),
          ListedProfile(image: "images/p5.png", username: "Samuel Jonas", handle: "jdoe", follows: false),
          ListedProfile(image: "images/p6.png", username: "Samuel Jonas", handle: "jdoe", follows: false),
          ListedProfile(image: "images/p7.png", username: "Samuel Jonas", handle: "jdoe", follows: false),
          ListedProfile(image: "images/p9.png", username: "Samuel Jonas", handle: "jdoe", follows: false)
        ],
      ),
    );
  }
}