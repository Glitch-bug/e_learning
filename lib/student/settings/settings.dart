import 'package:flutter/material.dart';
import 'package:e_learning/home/section.dart';
import 'package:e_learning/student/settings/profile.dart';
import 'package:e_learning/student/settings/password.dart';

class Settings extends StatefulWidget{
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool tog = true;
  bool owner = true;
  @override 
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.all(20),
      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: (){Navigator.pop(context);},),
                const Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  )
                ),
                Container(
                  width: 20,
                ),
              ],
            ),
          ),

        Stack(
          children: [Container(
            height: size.height * 0.11,
            width: size.width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffCFD1D4)), 
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              height: size.height * 0.10,
              width: size.width - 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Membership",
                        style: TextStyle(
                          color: Color(0xff70747E)
                        )
                      ),
                      Text(
                        "Free membership user",
                        style: TextStyle(
                          fontSize:18,
                        ) 
                      ),   
                    ],
                  ),
                  GreyButton(text:"upgrade", effect:(){})
                  ],
                ),
              ),
            ),
          ]
        ),
        Stack(
          children: [Container(
            height: size.height * 0.11,
            width: size.width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffCFD1D4)), 
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              height: size.height * 0.10,
              width: size.width - 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Account",
                        style: TextStyle(
                          color: Color(0xff70747E)
                        )
                      ),
                      Text(
                        "Profile settings",
                        style: TextStyle(
                          fontSize:18,
                        ) 
                      ),   
                    ],
                  ),
                  GreyButton(
                    text:"manage",
                    effect: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context){
                          return const Profile();
                        })
                      );
                    },
                  )
                  ],
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [Container(
            height: size.height * 0.11,
            width: size.width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffCFD1D4)), 
              ),
            ),
          ),
          Positioned(
            top: 0,
            child:SizedBox(
              height: size.height * 0.10,
              width: size.width - 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Notification",
                        style: TextStyle(
                          color: Color(0xff70747E)
                        )
                      ),
                      Text(
                        "Personalized Notifications",
                        style: TextStyle(
                          fontSize:18,
                        ) 
                      ),   
                    ],
                  ),
                ],
                ),
            ),
            ),
          ],
        ),
        Stack(
          children: [Container(
            height: size.height * 0.11,
            width: size.width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffCFD1D4)), 
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              height: size.height * 0.10,
              width: size.width - 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Security",
                        style: TextStyle(
                          color: Color(0xff70747E)
                        )
                      ),
                      Text(
                        "Password change",
                        style: TextStyle(
                          fontSize:18,
                        ) 
                      ),   
                    ],
                  ),
                  GreyButton(text:"manage", effect: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context){
                        return const PassChange();
                      }));
                  },)
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Help & support",
                style: TextStyle(
                  color: Color(0xff70747E)
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text(
                    "About us",
                    style: TextStyle(
                      fontSize:18,
                    ) 
                  ),

                Icon(Icons.arrow_forward_ios)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      fontSize:18,
                    ) 
                  ),

                Icon(Icons.arrow_forward_ios)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text(
                    "Privacy policy",
                    style: TextStyle(
                      fontSize:18,
                    ) 
                  ),

                Icon(Icons.arrow_forward_ios)
                ],
              )
            ]
          ),
        ),
        TextButton(
          onPressed: (){
            owner = !owner;
          }, 
          child: const Text(
            "sign out",
            style: TextStyle(
              fontSize: 17, 
              color: Color(0xff265AE8),
            )
          ) 
        )

      ]),
    )
    );
  }
}