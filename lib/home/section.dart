import "package:flutter/material.dart";


class Section extends StatelessWidget{
  String heading;
  String image_1;
  String image_2; 
  double width;
  String? title;
  String? descr;
  String? title1;
  String? descr1;
  String? badge;
  String? badge1;
  double? rate; 
  double? rate1;

  Section({super.key, required this.heading, required this.image_1, required this.image_2, required this.width, this.title, this.descr, this.title1, this.descr1, this.badge, this.badge1, this.rate, this.rate1});

  double coeff = 12.4;

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: width,
              height: 58,
              child:Text(
                heading,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff282F3E)
                ),
                softWrap: true,
                textAlign: TextAlign.left,
              )
            ),
            const Text(
              "see more",
              style:TextStyle(
                fontSize: 14,
              )
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Image.asset(image_1),
                  (badge != null)?
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffFD853A),
                          borderRadius: BorderRadius.all(
                            Radius.circular(3)
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                          child: Text(
                            badge!,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            )
                          ),
                        )
                      ),
                    ):const SizedBox(width: 0,height: 0,),
                  
                ],
              ),
              Stack(
                children: [
                Image.asset(image_2),
                (badge1 != null)?
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffFD853A),
                        borderRadius: BorderRadius.all(
                          Radius.circular(3)
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                        child: Text(
                          badge!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )
                        ),
                      )
                    ),
                  ):const SizedBox(width: 0,height: 0,)
                ]
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:15.0),
          child: (title1 != null)?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 160,
                    height: 93,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? "",  
                          style: const TextStyle(
                              fontSize:15,
                              fontWeight: FontWeight.w500, 
                            )
                        ),
                        Text(
                          descr ?? "",
                          style: const TextStyle(
                              fontSize:12,
                              color: Color(0xff585D69),
                            )
                        ),
                        (rate != null)?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "$rate",
                              style: const TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff888C94)
                                )
                              ),
                            Stack( 
                            children: [
                              Container(
                                width: 65,
                                height: 33,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFAFAFA),
                                ),
                              ),
                              Positioned(
                                top: 1,
                                child: Container(
                                  width: rate! * coeff,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber
                                    ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: SizedBox(
                                  width: 62,
                                  height: 32,
                                  child: Image.asset("images/icons/stars.png")
                                ),
                              )
                            ],
                          ),
                            const Text(
                              "(434)",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff888C94)
                              ),
                            )
                          ],
                        ): const SizedBox(width: 0,height: 0,)
                      ]
                    ),
                  ),
                ],
                
              ),
              SizedBox(
                width: 160,
                height: 93,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title1 ?? "",  
                        style: const TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.w500, 
                          )
                      ),
                      Text(
                        descr1 ?? "",
                        style: const TextStyle(
                            fontSize:12,
                            color: Color(0xff585D69),
                          )
                      ),
                      (rate1 != null)?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$rate1",
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xff888C94)
                            )
                          ),
                          Stack( 
                            children: [
                              Container(
                                width: 65,
                                height: 33,
                                decoration: const BoxDecoration(
                                  color: Color(0xffFAFAFA),
                                ),
                              ),
                              Positioned(
                                top: 1,
                                child: Container(
                                  width: rate1! * coeff,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber
                                    ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: SizedBox(
                                  width: 62,
                                  height: 32,
                                  child: Image.asset("images/icons/stars.png")
                                ),
                              )
                            ],
                          ), 
                          const Text(
                            "(434)",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff888C94)
                            ),
                          )
                        ],
                      ): const SizedBox(width: 0,height: 0,)
                    ]
                  ),
              )

            ],
          ):const SizedBox(width: 0,height: 0,),
        )
      ],
    );
  }
}

class TImage extends StatelessWidget {
  String location;
  String location1;
  String label;
  String label1;

  TImage({super.key, required this.location, required this.label, required this.location1, required this.label1});

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(location),
              Positioned(
                child: Image.asset("images/o.png")
              ),
              Positioned(
                bottom: 25,
                child: SizedBox(
                  width: 125,
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                ),
                  
              ),
            ]
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(location1),
              Positioned(
                child: Image.asset("images/o.png")
              ),
              Positioned(
                bottom: 25,
                child: SizedBox(
                  width: 125,
                  child: Text(
                    label1,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}


class ListItem extends StatelessWidget{
  String image;
  String title;
  String author;

  ListItem({super.key, required this.image, required this.title, required this.author});

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
          children: [
            Image.asset(image),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 243,
                height: 90,
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    Text(author),
                    Row( 
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.person_outline,
                              color: Colors.grey,),
                            Text(
                              "4k student",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 19),
                          child: Row(
                            children: [
                              Image.asset("images/icons/star.png"),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "4.7",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey
                                  )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    )
                  ]
                ),
              ),
            )
          ],
        ),
    );
  }
}

class Selection extends StatefulWidget{
  String label;
  List <String> selections;


  Selection({super.key,required this.label,required this.selections});

  
  
 
  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {


  late List state; 


  @override
  void initState() {
    super.initState();

    state = List.generate(widget.selections.length, (index) {return false;});
  }
 

 @override 
 Widget build(BuildContext context){
  return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(widget.selections.length, (i) {
              return SizedBox(
                height: 30,
                child: CheckboxListTile( 
                  title: Text(widget.selections[i]),
                  contentPadding: EdgeInsets.zero,
                  value: state[i],
                  onChanged: (newValue){
                    setState(() {
                      state[i] = newValue;
                    });              
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              );
            })
          ),
        ]
      )
    );
 }
 
}