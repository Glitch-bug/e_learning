import "package:flutter/material.dart"; 

class PCard extends StatefulWidget{
  // <GlobalKey> formKey;
  const PCard({super.key});

  @override
  State<PCard> createState() => _PCardState();
}

class _PCardState extends State<PCard> {
  
  @override 
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Spacer(flex: 1,),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: (){
                Navigator.pop(context);
              }, 
              icon: const Icon(Icons.arrow_back_ios_new)
            ),
            const Spacer(flex: 1,),
            const Text(
              "Add your payment method",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )
            ),
            const Spacer(flex: 1,),
            Form(
              child: SizedBox(
                height: size.height*0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom:11.0),
                      child: Text("Card Name"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        borderSide: BorderSide(
                        )
                      ), 
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(bottom:11.0),
                      child: Text("Card Number"),
                    ),
                    TextFormField(
                       decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        borderSide: BorderSide(
                        )
                      ), 
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom:11.0),
                                  child: Text("Exp Date"),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    )
                                  ), 
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(bottom:11.0),
                                  child: Text("CVV2"),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide()
                                      )
                                    ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    )
                  ]
                ),
              ),
            ),
            const Spacer(flex:2),
            ElevatedButton(
              onPressed: (){
              }, 
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width, size.height * 0.07),
                backgroundColor: const Color(0xff265AE8),
              ),
              child: const Text("Continue")
            ),
            const Spacer(flex: 10,)
          ],
        ),
      ),
    );

  }
}