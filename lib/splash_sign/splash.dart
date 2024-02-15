import 'package:flutter/material.dart';
import 'dart:async';

import 'package:e_learning/splash_sign/sign_in.dart';
import 'package:e_learning/splash_sign/register.dart';

class Onboarding extends StatelessWidget{
  const Onboarding({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50, 20, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0 , 0, 0, 26.0),
                child: Text(
                  'Skip', 
                  style: TextStyle(
                    color: Color(0xff265AE8),
                    fontSize: 20,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Bubble(),
                  ],  
              ),
            ),
            Padding (
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                   MaterialPageRoute(
                      builder: (BuildContext context){
                        return const Register();
                      }
                    ),
                );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(335, 60),
                  backgroundColor: const Color(0xff265AE8),

                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 16,
                  )
                  )
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                   MaterialPageRoute(
                      builder: (BuildContext context){
                        return const SignIn();
                      }
                    ),
                );
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(335, 60),
              ),
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff265AE8),
                )
              )
            ),
          ],
        ),
      )
    );
  }

}

class Bubble extends StatefulWidget{
  const Bubble({super.key});

  @override
  State<Bubble> createState() => _BubbleState();
}

double first = 7;
double second = 5;
double third = 5;

var buttons = [
  first, second, third
];

update_card(currentPage) {
  if (currentPage < 2){
    currentPage++;
  }
  else{
    currentPage = 0;
  }

  for(int i=0; i < 3; i++){
    print("in");
    if (currentPage == i){
      buttons[i] = 7; 
    }else{
      buttons[i] = 5;
    }
  }

  return currentPage;
}


    
class _BubbleState extends State<Bubble>{
  int currentPage = 0;
  int step = 0;
  int count = 0;
  

  List<Widget> pages = const [
    Thinkr(),
    Searchr(),
    Crafter(),
  ];


  void periodicTimer() { Timer.periodic(
    const Duration(seconds: 10),
    (timer) {
      setState(() {
        currentPage = update_card(currentPage);
      });
      
    });
  }
  
  @override 
  Widget build(BuildContext context) {
    
    if(count == 0){
      periodicTimer();
      count++;
    }
    
    return Column(
      children: [
        pages[currentPage],
        Buttons(),
      ]);
  }

}

class Thinkr extends StatelessWidget{
  const Thinkr({super.key});

  

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 331,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0,0,60),
            child: Image.asset("images/thinkr.png"),
          ),
          SizedBox(
            height: 148,
            width: 331,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  width: 261,
                  child: Text(
                    """Better way to learning is calling you!""",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 311,
                  child: Text(
                    "Impeet viverra vivamus porttior ulec ac vulte lectus velit sen lectus ue",
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}

class Searchr extends StatelessWidget{
  const Searchr({super.key});

  

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 331,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0,0,60),
            child: Image.asset(r'images/Searchr.png'),
          ),
          SizedBox(
            height: 148,
            width: 331,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  width: 261,
                  child: Text(
                    "Finding yourself by doing whatever you do",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 311,
                  child: Text(
                    "Impeet viverra vivamus porttior ulec ac vulte lectus velit sen lectus ue",
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}



class Crafter extends StatelessWidget{
  const Crafter({super.key});

  

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 331,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0,0,60),
            child: Image.asset(r'images/Crafter.png'),
          ),
          SizedBox(
            height: 148,
            width: 331,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  width: 261,
                  child: Text(
                    "It's not just learning It's a promise!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 311,
                  child: Text(
                    "Impeet viverra vivamus porttior ulec ac vulte lectus velit sen lectus ue",
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}

class Buttons extends StatefulWidget{
  // double? firsti;
  // double? secondi;
  // double? thirdi;
  Buttons({super.key});
 
  @override 
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons>{
  // double? firsti;
  // double? secondi;
  // double? thirdi;

  @override 
  Widget build(BuildContext context){
    return SizedBox(
      height: 8,
      width: 26,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: buttons[0],
            height: buttons[0],
            child: ElevatedButton(
              onPressed: (){
                update_card(3);
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: null,
            ),
          ),
          SizedBox(
            width: buttons[1],
            height: buttons[1],
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: null,
            ),
          ),
          SizedBox(
            width: buttons[2],
            height: buttons[2],
            child: ElevatedButton(
              onPressed: (){}, 
              style: ElevatedButton.styleFrom
              (
                shape: const CircleBorder(),
                backgroundColor: Colors.grey,
              ),
              child: null,
            ),
          )
        ],),
    );
  }
}