import "package:flutter/material.dart";

import "package:e_learning/forgotten/f_ent_email.dart";
import 'package:e_learning/home/frame.dart';

AlertDialog alert = AlertDialog(
  title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 54, 0, 0),
          child:Center(
            child: Text("Choose an account")
          ),
        ),
  content: Container(
    width: 335,
    height: 304,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(135.0),
        )
      ),
    child: Column(
      children: [
         const Padding(
           padding: EdgeInsets.fromLTRB(0, 8.0, 0, 0),
           child: Center(
              child: Text(
                "To continue to Tik Tak",
                
              ),
            ),
         ),
        
        
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 29, 0, 0),
          child: SizedBox(
            width: 297,
            height: 35,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image.asset("images/icons/Profile Picture.png"),
                ),
                Column(children: const [Text(
                  "Account Name",
                  style: TextStyle(
                    fontSize: 15,
                  ),), Text(
                    "email@gmail.com",
                  style: TextStyle(
                    fontSize: 11,
                  ))],),
              ]),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0,10,0,10),
          child: Divider(
            color: Colors.black,
          )
        ),
        SizedBox(
          width: 297,
          height: 35,
          child: Row
          (
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image.asset("images/icons/User.png"),
              ),
              const Text("Use another account")
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0,10,0,10),
          child: Divider(
            color: Colors.black,
          )
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 87, 0),
          child:  SizedBox(
            width: 230,
            height: 66,
            child: Text(
              "To continue Google will share your name, email address and profile picture with TikTak",
              softWrap: true,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              )
            )
          ),
        )
      ]),
  ),
);

class SignIn extends StatefulWidget{
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formkey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 65,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                  child: SizedBox(
                    width: 234,
                    height: 68,
                    child:Text(
                      "Welcome back! Sign in to Continue",
                      style: TextStyle(
                        fontSize: 26,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child:ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      }
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC1C2B8),
                    minimumSize: const Size(10, 60)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("images/icons/Rectangle 115.png"),
                      const Center(
                        child:Text(
                          "Log in with Google",
                          style: TextStyle(
                            color:Colors.black,
                          )
                        )
                      ),
                      Container(
                        width: 28,
                        color: Colors.grey,
                      )
                    ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC1C2B8),
                    minimumSize: const Size(10, 60)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("images/icons/facebook.png"),
                      const Center(
                        child:Text(
                          "Log in with Facebook",
                          style: TextStyle(
                            color:Colors.black,
                          )
                        )
                      ),
                      Container(
                        width: 28,
                        color: Colors.grey,
                      )
                    ]),
                ),
              ),
              const Center(
                child: Text(
                  "or",
                  style: TextStyle(
                    color: Colors.grey,
                  )
                )
              ),
              Form(
                key:_formkey,
                child:Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'user name'
                      ),
                      validator:(value){
                        if (value! == "Jessie"){
                          return "This user does match the password";
                        }
                      }
                    ),  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Image.asset("images/icons/eye sheild.png"),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'password',
                      ),
                      validator:(value){
                          if (value! != "password"){
                            return "This password is incorrect";
                          }
                          return null;
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()){
                            Navigator.push(context, 
                              MaterialPageRoute(
                                builder: (BuildContext context){
                                  return const Frame();
                                }
                              )
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(335, 60),
                          backgroundColor: const Color(0xff265AE8),
                        ),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 16,
                          )
                          )
                        ),
                      ),
                    ]
                  ),
                ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (BuildContext context){
                        return const ForgotEntEmail();
                      }
                    )
                  );
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(335, 60),
                ),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff265AE8),
                  )
                )
              ),
            ]
          ),
        ),
      ),
    );
  }
}