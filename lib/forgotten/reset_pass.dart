import "package:flutter/material.dart";

class ResetForm extends StatefulWidget{
  const ResetForm({super.key});

  @override
  State<ResetForm> createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {
  final _formKey = GlobalKey<FormState>();
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
                    "Reset your password",
                    style: TextStyle( 
                      fontSize: 18,
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 119),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children:[
                      TextFormField(
                        obscureText: true,
                        decoration:InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: "Enter new password",
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
                          labelText: "Confirm new password",  
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
                  if(_formKey.currentState!.validate()){
                    debugPrint("Reset");
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(335, 60),
                  backgroundColor: const Color(0xff265AE8),
                ),
                child: const Text(
                  'Reset',
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