import 'package:e_learning/home/section.dart';
import "package:flutter/material.dart";


class Replies extends StatelessWidget{
  const Replies({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: (){
                Navigator.pop(context);
              },       
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "1 Replies",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ),
                GreyButton(text: "Add Reply", effect: (){
                  showModalBottomSheet(
                    context: context, 
                    enableDrag: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    builder: (context) {
                      return TextBox();
                    }
                  );
                }),
              ],
            ),
            const Spacer(),
            Comment(location: "images/c3.png", handle: "mouni", time: "11 mins ago   .   Student", comment: "How to get better at line? I am really stuck in this step!", likes: 21,),
            const Spacer(),
            Comment(location: "images/c5.png", handle: "anyymor", time: "20 mins ago", comment: "The step is really easy, just keep practicing line drawing with right posture and correct pencil holding as showen in the video! Good luck ❤", likes: 10, teach: true),
            const Spacer(flex: 18,)
          ],
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget{
  const TextBox({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 70),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Expanded(
                flex: 85,
                child: SingleChildScrollView(
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              const Spacer(),
              IconButton(onPressed:(){},icon: const Icon(Icons.send, color: Color(0xff265AE8),))
            ],
          ),
        ),
      ),
    );
  }
}