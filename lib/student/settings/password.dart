import "package:flutter/material.dart";

class PassChange extends StatefulWidget{
  const PassChange({super.key});

  @override
  State<PassChange> createState() => _PassChangeState();
}

class _PassChangeState extends State<PassChange> {
  final _formKey = GlobalKey<FormState>();
  var pass = "";
  
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
                    "Password change",
                    style: TextStyle( 
                      fontSize: 18,
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 119),
                child: Form(
                  key: _formKey,
                  child: SizedBox(
                    height: size.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: "Enter old password",
                          ),
                          validator: (value) {
                            if(value != "password"){
                              return "Does not match with old password";
                            }
                            return null;
                          },
                        ),
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
                            if (value.length < 8){
                              return "Password must be at least 8 characters long";
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            floatingLabelBehavior:  FloatingLabelBehavior.never,
                            labelText: "Confirm new password",  
                            suffixIcon: Image.asset("images/icons/eye sheild.png"),
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
              ),
              ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    debugPrint("Reset");
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(size.width, 60),
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