import "package:flutter/material.dart";
import "package:e_learning/home/section.dart";
import "package:e_learning/course/frame.dart";
import "package:e_learning/teacher/teacher.dart";

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: SizedBox(
                  width: 337,
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Hola, sayef",
                            style: TextStyle(
                              fontSize:26,
                            )
                          ), 
                          Text(
                            "What do you wanna learn today?",
                            style: TextStyle( 
                              fontSize: 14, 
                            )    
                          )
                        ],
                      ),
                      const CircleAvatar(
                        radius: 22,
                        foregroundImage:AssetImage("images/icons/hand_profile.png"), 
                      ),
                    ]
                  ),
                ),
              ),
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
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,30, 0, 0),
                child: Section(heading:"Popular category in our platform", image_1: "images/Category 1.png", image_2:"images/Category 2.png", width:181), 
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Section(heading:"Most watched category this month", image_1: "images/Group 1.png", image_2:"images/Group 2.png", width: 190, title: "HTML, CSS for noob and nerds", descr: "Sayef Mahmud, PixelCo", title1: "Modern Interior design for beginner!", descr1: "Samantha Rossye", badge:"HOT", badge1:"NEW", rate:4.5, rate1:4.35, loc: CourseFrame(), loc1:  CourseFrame(),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Section(heading:"Our top popular teacher this month", image_1: "images/Teacher 1.png", image_2:"images/Teacher 2.png", width: 195, loc: Teacher()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:40),
                child: Container(
                  width: 335,
                  height: 162,
                  decoration: const BoxDecoration(
                      color: Color(0xffFFF1F3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                        
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Try free trial to enhance your creative journey!",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Get free trial",
                        style: TextStyle( 
                          fontSize: 16,
                          color: Color(0xff265AE8)
                        ),
                      )
                    ],
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Section(heading:"Continue to watch previous class", image_1: "images/Course 1.png", badge:"Best Sell", badge1:"NEW", title:"Take care of your plants at home", descr:"Sarah Maningger", title1: "Grow your creative business with Insta!", descr1:"Samantha Rossye", image_2:"images/Course 2.png", width: 196, rate: 4, rate1: 5),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Section(heading:"What others are watching", image_1: "images/Course 1.png", badge:"Best Sell", badge1:"NEW", title:"Take care of your plants at home", descr:"Sarah Maningger", title1: "Grow your creative business with Insta!", descr1:"Samantha Rossye", image_2:"images/Course 2.png", width: 167, rate:4, rate1:5),
              ),
            ],
              
          ),
        ),
      );
  }
}