import 'package:e_learning/home/section.dart';
import 'package:flutter/material.dart';


class Teachers extends StatelessWidget {
  const Teachers({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Padding(
          padding:EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back_ios_new_rounded),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: Text(
                  "Top teacher this month",
                  style: TextStyle( 
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )
                ),
              ),
              ListedProfile(image: "images/p1.png", username:"Samuel Jonass" , handle: "jdoe", follows: false),
              ListedProfile(image: "images/p2.png", username:"Mohammed Salah" , handle: "jdoe", follows: true),
              ListedProfile(image: "images/p3.png", username:"Arafat Jamil" , handle: "arafatj", follows: true),
              ListedProfile(image: "images/p4.png", username:"Samuel Jonass" , handle: "sammj", follows: true),
              ListedProfile(image: "images/p5.png", username:"Irene Joe" , handle: "irenee", follows: true),
              ListedProfile(image: "images/p6.png", username:"Nattale Gromi" , handle: "ngromi", follows: true),
              ListedProfile(image: "images/p7.png", username:"Michel Pheleps" , handle: "pheleps", follows: true),
              ListedProfile(image: "images/p8.png", username:"Samur Jordan" , handle: "jdoe", follows: false),
            ],
          )
        ),
      ),
    );
  }
}