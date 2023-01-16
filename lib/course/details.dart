import "package:flutter/material.dart";

class Details  extends StatelessWidget{
  const Details({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios),),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  Image.asset("images/Project1.png"),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: (){}, icon: Image.asset("images/icons/x.png"))),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  label:Text(
                    "Project name",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const TextField(
              maxLines: 8,
              decoration: InputDecoration(
                label: Text(
                  "Description",
                  style:  TextStyle(
                    fontSize: 17,
                  ),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelStyle: TextStyle(
                  fontSize: 17,
                  color: Color(0xff585D69)
                ),
              )
            ),
            
          ]),
        ),
      ),
    );
  }
}