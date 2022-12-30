import "package:flutter/material.dart";

import "package:e_learning/home/section.dart";


class FiltSearch extends StatelessWidget{
  const FiltSearch({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.pop(context);
                  }
                ),
              ),
              Selection(label: "Sort by", selections: const ["Free classes", "Premium classes", "all"]),
              Selection(label: "Level", selections: const ["Beginner", "Intermediate", "Advanced"]),
              Selection(label: "Duration", selections: const ["0-1 Hour", "1-3 Hour", "3+ Hour"]),
              Padding(
                padding: const EdgeInsets.only(top:51),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          minimumSize: const Size(90, 44),
                          backgroundColor: const Color(0xffFBFBFB),
                      ),
                      child: const Text(
                        "Reset",
                        style: TextStyle(color: Colors.red),
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(90, 44),
                            backgroundColor: const Color(0xff265AE8),
                        ),
                        child: Text("Apply")
                      ),
                    ),
                  ],
                  ),
              )
            ]
          ),
        ),
      )
    );
  }
}