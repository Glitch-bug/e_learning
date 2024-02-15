import "package:flutter/material.dart";
import 'package:e_learning/teacher/card.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool month = false;
  bool yr = false;
  @override 
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    print(size.width * 0.8);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:108.0),
                child: SizedBox(
                  width: size.width * 0.9 - 40,
                  height: size.height * 0.17,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Enhance your learning experience with us",
                        style: TextStyle(
                          fontSize: 26, 
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: size.width * 0.57,
                        child: const Text(
                          "Choose your plan that works for you. Cancel it anytime!",
                          style: TextStyle(
                            fontSize:14,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                ),
              ),
            ),
            const Spacer(flex: 2,),
            Container(
              width: size.width,
              height: size.height* 0.12,
              decoration: const  BoxDecoration(
                color:Color(0xff265AE8),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 11),
                child: CheckboxListTile( 
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Spacer(flex: 3,),
                        Text(
                          r"$14.99 / Month",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(), 
                        Text(
                          "Get 1 month free trial",
                          style: TextStyle(
                            color: Colors.white,
                          )
                        ),
                        Spacer(flex: 3,)
                      ]
                    ),
                    contentPadding: EdgeInsets.zero,
                    value: month,
                    activeColor: Colors.white,
                    checkColor: const Color(0xff265AE8),
                    onChanged: (newValue){
                      setState(() {
                        month = newValue!;
                        if (month == true && yr == true){
                          yr = false;
                        }
                      });              
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
              ),
            ),
            const Spacer(flex: 1,),
            Container(
              width: size.width,
              height: size.height* 0.12,
              decoration: const  BoxDecoration(
                color:Color(0xffEDEEF0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 11),
                child: CheckboxListTile( 
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                          Spacer(flex: 3,), 
                          Text(
                            "\$144.99 / 12 Month",
                            style: TextStyle(
                              fontSize: 18
                            ),
                          ),
                          Spacer(), 
                          Text("Save 20% extra!"), Spacer(flex: 3,)
                        ]
                      ),
                    contentPadding: EdgeInsets.zero,
                    value: yr,
                    onChanged: (newValue){
                      setState(() {
                        yr = newValue!;
                         if (month == true && yr == true){
                          month = false;
                        }
                      });              
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
              ),
            ),
            const Spacer(flex: 13,),
            ElevatedButton(
              onPressed: (){
                if (month || yr){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return  const PCard();
                    }
                  ));
                }
              }, 
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width, size.height * 0.07),
                backgroundColor: const Color(0xff265AE8),
              ),
              child: const Text("Continue")
            )
          ],
        ),
      )
    );
  }
}