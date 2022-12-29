import "package:flutter/material.dart";

class ResSearch extends StatelessWidget{
 const ResSearch({super.key});

 @override 
 Widget build(BuildContext context){
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 37),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Your search result"),
            IconButton(onPressed: (){}, icon: Image.asset("images/icons/setting.png"))
          ],
        ),
      ),
      Row(
        children: [
          Image.asset("images/s1.png"),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text("Adobe illustrator for all beginner artist"),
                Text("Samuel Doe"),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: Colors.grey,),
                        Text(
                          "4k student",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: Row(
                        children: [
                          Image.asset("images/icons/star.png"),
                          Text("4.7"),
                        ],
                      ),
                    ),

                  ]
                )
              ]),
          )
        ],)
    ],
  );
 } 
}