import "package:flutter/material.dart";
import "package:e_learning/course/project.dart";

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
  Widget? loc;
  Widget? loc1;

  Section({super.key, required this.heading, required this.image_1, required this.image_2, required this.width, this.title, this.descr, this.title1, this.descr1, this.badge, this.badge1, this.rate, this.rate1, this.loc, this.loc1});

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
              GestureDetector(
                onTap:
                (loc != null)?
                (){
                  
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return loc!;
                    }));
                }: (){},
                child: Stack(
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
              ),
              GestureDetector(
                onTap:
                (loc1 != null)?
                (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return loc1!;
                    }));
                }: (){},
                child: Stack(
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
                ),
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
              GestureDetector(
                onTap: 
                (loc != null)?
                (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return loc!;
                    }));
                }: (){},
                child: Column(
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
              ),
              GestureDetector(
                onTap:
                (loc1 != null)?
                (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return loc1!;
                    }));
                }: (){},
                child: SizedBox(
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

class ListedProfile extends StatelessWidget {
  String image;
  String username;
  String handle;
  bool follows;
  ListedProfile({super.key, required this.image, required this.username, required this.handle, required this.follows});

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom:20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          SizedBox(
            width: 190,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  username,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize:18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "@$handle",
                  style: const TextStyle(
                    fontSize:12
                  ),
                ),
              ]
            ),
          ),
          ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: const Size(77, 41),
              backgroundColor: const Color(0xffEDEEF0),
            ),
            child: Text(
              (!follows)?
              "Follow": "View",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              )

            ) 
          ),
        ],
      ),
    );
  }
}

class GreyButton extends StatelessWidget{
  String text;
  VoidCallback effect;

  GreyButton({super.key, required this.text, required this.effect});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: effect,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: Size(size.width * 0.045, size.height * 0.055),
        backgroundColor: const Color(0xffEDEEF0),
      ), 
        child: Text(
        text,
        style: const TextStyle( 
          color:Colors.black
          )
        ),
    );
  }
}


class Comment extends StatelessWidget{
  String location;
  String handle;
  String time;
  String comment;
  Widget? rpage;
  int? likes;
  int? replies;
  bool? teach;
  Comment({super.key, required this.location, required this.handle, required this.time, required this.comment, this.likes, this.replies, this.rpage, this.teach});

  @override 
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(location),
          const Spacer(),
          SizedBox(
            width: 282,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "@$handle",
                      style: const TextStyle(
                        fontSize:15,
                      )
                    ),
                    const Spacer(),
                    (teach != null)?
                    Container(
                      height: size.height * 0.02,
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                        color: const Color(0xffF97066),
                        borderRadius: BorderRadius.circular(3)
                      ),
                      child: const Text(
                        "teacher",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ):Container(),
                    Spacer(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.005),
                  child: Text(
                    time,
                    style: const TextStyle(
                      fontSize: 13,
                      color:Color(0xff9FA3A9))
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Text(
                    comment,
                    style: const TextStyle(
                      fontSize: 15,
                      color:Color(0xff282F3E)
                    )
                  ),
                ),
                (likes != null)?
                Padding(
                  padding: EdgeInsets.only(top:size.height* 0.01),
                  child: Row(children: [
                    const Text(
                      "Liked",
                      style: TextStyle(
                        color: Color(0xff265AE8)
                      )
                    ),
                    const Spacer(),                  
                    GestureDetector(
                      onTap:(rpage != null)? (){
                        
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context){
                            return rpage!;
                          })
                        );
                      }: (){},
                      child: const Text(
                        "Reply",
                        style :TextStyle(
                          color: Color(0xff585D69)
                          )
                      ),
                    ),
                    const Spacer(flex: 9,),
                    Image.asset("images/icons/like.png"),
                    Text(" $likes")
                  ],),
                ): Container(),
                (replies != null)?
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "view $replies replies",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff265AE8),
                    )
                  ),
                ):Container()
              ],
            ),
          ),
          const Spacer()
        ]
    );
  }
}

class Lesson extends StatelessWidget{
  String location;
  String title;
  int count;
  String? content;
  Lesson({super.key, required this.location, required this.title, required this.count, this.content});

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context){
              return Project();
            })
          );
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(location)
                ), 
                SizedBox(
                  width: size.width - 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),),
                      Padding(
                        padding: EdgeInsets.only(top:size.height*0.015),
                        child: Text(
                          "Lesson $count",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff585D69)
                          )
                        ),
                      )
                  ],),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:size.height*0.023),
              child: SizedBox(
                width: size.width - 40,
                child:Text(
                  content ?? "",
                  style: const TextStyle(
                    color: Color(0xff70747E))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Resource extends StatelessWidget{
  String ext;
  String title;
  int fsize;
  Color? color;

  Resource({super.key, required this.ext, required this.title, required this.fsize, required this.color});
  
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(top:size.height*0.023),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [        
          Row(
            children: [
              Container(
                height: size.width * 0.11,
                width: size.width * 0.11,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text(
                    ".$ext",
                    style: const TextStyle(
                      color: Colors.white,
                    )
                  ),)
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.01 ),
                      child: Text(
                        ".$ext  ${fsize}Mb",
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xff888C94)
                        )
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Image.asset("images/icons/cloudd.png"),        
        ],
      ),
    );
  }
}