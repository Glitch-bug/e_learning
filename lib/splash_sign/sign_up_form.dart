import "package:flutter/material.dart";

class SignUpForm extends StatefulWidget{
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _FormKey = GlobalKey<FormState>();
  var pass = "";

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
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                child: GestureDetector(
                  child:const Icon(
                    Icons.arrow_back_ios
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0,20, 0,0),
                child: Text(
                    "Enter your details",
                    style: TextStyle( 
                      fontSize: 18,
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 119),
                child: Form(
                  key: _FormKey,
                  child: Column(
                    children:[
                      TextFormField( 
                        decoration: const InputDecoration(
                          labelText: "username"
                        ),
                        validator: (value) {
                          if (value!.length > 12){
                            return "Username length has exceeded limit of 10 characters";
                          }
                          return null;
                        },
                        
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "email address"
                        )
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration:InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "password",
                          suffixIcon: Image.asset("images/icons/eye sheild.png"),
                        ),
                        validator: (value) {
                          pass = value!;
                          var unacc = ["@", "/", "%"];
                            for (var rune in value!.runes) {
                              var character=String.fromCharCode(rune);
                              for (int i=0; i < unacc.length; i++ ) {
                                if (character == unacc[i]){
                                  return "The password is not valid";
                                }
                              }
                            }
                            return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          floatingLabelBehavior:  FloatingLabelBehavior.never,
                          labelText: "confirm password",  
                        ),
                        validator: (value) {
                          if(pass != value){
                            return "Your passwords do not match";
                          }
                          return null;
                        },
                      ),
                    ]
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if(_FormKey.currentState!.validate()){
                    debugPrint("continue");
                  }
                  debugPrint("hello");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(335, 60),
                  backgroundColor: const Color(0xff265AE8),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                  )
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}