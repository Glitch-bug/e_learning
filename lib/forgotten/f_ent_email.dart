import "package:flutter/material.dart";
import "package:e_learning/forgotten/f_check_email.dart";

class ForgotEntEmail extends StatefulWidget {
  const ForgotEntEmail({super.key});

  @override
  State<ForgotEntEmail> createState() => _ForgotEntEmailState();
}

class _ForgotEntEmailState extends State<ForgotEntEmail> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "email address",
                            suffixIcon: Image.asset("images/icons/eye sheild.png")
                          ),
                          validator: (value ) {
                            if (value != "jessie@pinkmail.com"){
                              return "The email address you just chose is not associated with you account";
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 88, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()){
                              Navigator.push(context, 
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const ForgotCheckEmail();
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
                            'Send email',
                            style: TextStyle(
                              fontSize: 16,
                            )
                          )
                        ),
                      ),
                    ],
                  )
                )
            ],
          )
      )
    );
  }
}