import 'package:flutter/material.dart';
import 'package:e_learning/home/section.dart';
import 'package:e_learning/student/settings/profile.dart';


class Teacher extends StatefulWidget{
  int pages = 0;
  List <Widget> tabs = [const Projects(),const  Courses(), const Following()];
  Teacher({super.key});

  @override 
  _TeacherState createState() => _TeacherState();
}

class _TeacherState extends State<Teacher>{
  bool owner = false;
  @override 
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  
    return Scaffold(
      body: SingleChildScrollView(
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
                    color: Color(0xff3F79EB)
                  ),
                  
                ),
                const Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/tch_profile.png")
                    ),
                  ),
                ),
                const Positioned.fill(
                  right: 20,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.share, color: Colors.white,)
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
                "Professional comic book artist and full time art teacher",
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: SizedBox(
                width: (size.width * 0.045) * 9.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffF97066),
                        minimumSize: Size(size.width * 0.045, size.height * 0.040),
                      ),
                      child: Text("teacher")
                    ),
                    Container(),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff265AE8),
                        minimumSize: Size(size.width * 0.045, size.height * 0.040),
                      ),
                      child: Text("Follow"),

                    )
                  ],
                ),
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
          ListItem(image: "images/s1.png", title: "AdComic drawing essential for everyone!", author: "Anny Moriaty"),
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