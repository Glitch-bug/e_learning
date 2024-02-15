import  "package:flutter/material.dart";
import 'package:e_learning/splash_sign/sign_in.dart';
import 'package:e_learning/splash_sign/sign_up_form.dart';




class Register extends StatelessWidget{
  const Register({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 26,
                      )
                    ),
                  ),
                  Text(
                    "Sign Up to continue!",
                    style: TextStyle(
                      fontSize: 26,
                    )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: ElevatedButton(
                onPressed: () {},
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
                        "Sign up with Google",
                        style: TextStyle(
                          color:Colors.black,
                        )
                      )
                    ),
                    Container(
                      width: 28,
                      color: const Color(0xffC1C2B8),
                    )
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ElevatedButton(
                onPressed: () {},
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
                        "Sign up with Facebook",
                        style: TextStyle(
                          color:Colors.black,
                        )
                      ),
                    ),
                    Container(
                      width: 28,
                      color: const Color(0xffC1C2B8),
                    )
                  ]
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Center(
                child: Text(
                  "or",
                  style: TextStyle(
                    color: Colors.grey,
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(
                      builder:(BuildContext context){
                        return const SignUpForm();
                      } 
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffC1C2B8),
                  minimumSize: const Size(10, 60)
                ),
                child: const Center(
                  child:Text(
                    "Sign up with email",
                    style: TextStyle(
                      color:Colors.black,
                    )
                  )
                ),  
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: SizedBox(
                width: 241,
                height: 44,
                child: Text(
                  "By signing up you agreed to our friendly terms and conditions",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                )
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 77, 0, 0),
              child: Center(
                child: Text("Already have an account?"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 19.5, 0,0),
              child: Center(
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (BuildContext context){
                        return const SignIn();
                      }
                    ),
                    );
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}