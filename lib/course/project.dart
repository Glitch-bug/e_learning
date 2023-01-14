import 'package:flutter/material.dart';

class Project extends StatelessWidget{
  const Project({super.key});

  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: EdgeInsets.only(top:size.height * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  onPressed:(){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)
                ),
                const Icon(Icons.share)
              ],),
            ),
            Padding(
              padding: EdgeInsets.only(top:size.height * 0.02),
              child: const Text(
                "Halloween poster",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:size.height * 0.02),
              child: Row(
                children: [
                  Image.asset("images/c3.png"),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "@mouni",
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:size.height* 0.009),
                        child: const Text(
                          "11 mins ago   .   Student",
                          style: TextStyle(
                            color: Color(0xff9FA3A9),
                            fontSize: 13,
                          )
                        ),
                      )
                    ],
                  ),
                  const Spacer(flex: 19,),
                  IconButton( 
                    onPressed:(){},
                    padding:EdgeInsets.zero,
                    constraints: const BoxConstraints(), 
                    icon: const Icon(Icons.more_vert))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:size.height * 0.02),
              child: const Text(
                "Project associated with:",
                style: TextStyle(
                  color:Color(0xff585D69)
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:size.height * 0.02),
              child: const SizedBox(
                width: 270,
                child: Text(
                  "Comic drawing essential for everyone!",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
              child: SizedBox(
                height: 331,
                width: 335,
                child: Image.asset("images/project_image.png"),
              ),
            ),

            const SizedBox(
              width: 335,
              child: Text(
                "Adipiscing proin a consectetur id tris tique sed adipiscing lorem non ut proin et amet aliqu am nunc aenean tellus id at mi, quis ut hdrerit pus aliquam scelerisque mauris, id volutpat viver lacus",
                style:TextStyle(
                  color: Color(0xff70747E)
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.025),
              child: const SizedBox(
                width: 335,
                child: Text(
                  "Tincidunt nulla enim volutpat nunc, habitant of neque non netus sodales id tortor lacus, alam integer lobortis proin quam integer pretium",
                  style:TextStyle(
                  color: Color(0xff70747E)
                )
                ),
              ),
            ),
            const Divider(color: Color(0xffAFB1B4)),
            Row(children: [
              Image.asset("images/icons/like.png"), 
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.05),
                child: const Text(
                  " 21",
                  style: TextStyle(
                    color: Color(0xff265AE8),
                    fontSize: 16,
                  )
                ),
              ), 
              Image.asset("images/icons/eye sheild.png"), 
              const Text(
                " 150",
                style: TextStyle(
                  fontSize: 16,
                )
              )
            ],)
          ],),
        )
      ),
    );
  }
}