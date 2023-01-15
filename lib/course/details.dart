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
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios),),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("images/Project1.png"),
            ),
            TextFormField(
              decoration: const InputDecoration(
                label:Text(
                  "Project Name",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const TextField(
              maxLines: 12,
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