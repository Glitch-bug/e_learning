import 'package:flutter/material.dart';

class Student extends StatefulWidget{
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
              const Positioned.fill(
                right: 20,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.settings_outlined, color: Colors.white,)
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
            child: Container(
              width: 282,
              height: 56,
              // decoration: BoxDecoration(
              //   border: Border(bottom: ),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 282/3,
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2.0, color: Color(0xff265AE8)), ),
                    ),
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
    
                  Container(
                    width: 282/3,
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2.0, color: Color(0xffE9EFFD)), ),
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
                  Container(
                    width: 282/3,
                    decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2.0, color: Color(0xffE9EFFD)), ),
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
                ]
              ),
            ),
          ),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              Container(
                width: 160,
                height: 152,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset("images/Project1.png")
                )
              ),
              Container(
                width: 160,
                height: 152,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset("images/Project2.png")
                )
              ),
              Container(
                width: 160,
                height: 152,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset("images/Project3.png")
                )
              )
            ],
          )
        ]
      ),
    );
  }
}