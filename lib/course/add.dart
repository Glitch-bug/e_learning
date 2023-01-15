import "package:flutter/material.dart";

class Add  extends StatelessWidget{
  const Add({super.key});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios),),
          const Text(
            "Add your project",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            )
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
          const Spacer(),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: Size(size.width,size.height * 0.06),
              backgroundColor: Color(0xffEDEEF0)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/icons/add-square.png"),
                Spacer(),
                const Text(
                  "add from gallery",
                  style: TextStyle(
                    color:Colors.black,
                  )
                ),
                Spacer()
              ],
              )
            )
        ]),
      ),
    );
  }
}