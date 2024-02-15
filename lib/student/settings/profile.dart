import 'package:flutter/material.dart';


class Profile extends StatefulWidget{
  const Profile({super.key});

  @override 
  State<Profile> createState() => _Profile();
}
class _Profile extends State<Profile>{
  final formKey = GlobalKey<FormState>();
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:20.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
            const Text(
              "Profile Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("images/st_profile.png"),
                  ), 
                  TextButton(
                    onPressed:(){},
                    child: const Text(
                      "Change your password",
                      style: TextStyle(
                        fontSize: 16, 
                        color: Color(0xff265AE8),
                      )
                    ),
                  )
                ]
                ),
            ),
            Form(
              key: formKey,
              child: TextFormField(
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  labelText:"new username"
                ),
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter some text";
                  }else if (value == 'jessie'){
                    return "this user name is already taken";
                  }
                  return null;
                })
              ),   
            ),
            Expanded(
              child: Container(),
            ),
             Padding(
               padding: const EdgeInsets.only(bottom:46),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){Navigator.pop(context);}, 
                    child: const Text(
                      "cancel",
                      style: TextStyle(
                        color: Colors.red
                      ),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: ElevatedButton(
                      onPressed: (){
                        if (formKey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Saved')),
                          );
                        }
                      }, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff265AE8),
                      ),
                      child: Text("Save")
                    ),
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}