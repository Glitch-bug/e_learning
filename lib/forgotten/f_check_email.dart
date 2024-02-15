import "package:flutter/material.dart";

import "package:e_learning/forgotten/reset_pass.dart";


class ForgotCheckEmail extends StatelessWidget{
  const ForgotCheckEmail({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column( 
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
              child: Center(
                child: Text(
                  "Check your email",
                  style: TextStyle(
                    fontSize: 26,
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                width:311,
                height: 40,
                child: Text(
                  "We've sent a password recover instruction to your email",
                  style: TextStyle( 
                    fontSize: 14
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Image.asset("images/rookr.png"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 59, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (BuildContext context){
                        return const ResetForm();
                      }
                    )
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(335, 60),
                  backgroundColor: const Color(0xff265AE8),
                ),
                child: const Text(
                  'Open email app',
                  style: TextStyle(
                    fontSize: 16,
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Will do it later",
                  style: TextStyle(
                    color: Colors.blue,
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 52, 0, 0),
              child: SizedBox(
                width: 254,
                height: 44,
                child: Text(
                    "Didn't get any email? Check your spam folder or try again with a valid email",
                    textAlign: TextAlign.center,
                  )
              ),
            )
          ],
        )
      )
    );
  }
}