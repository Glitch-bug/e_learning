import "package:flutter/material.dart";
import "package:e_learning/home/section.dart";
import "package:e_learning/course/replies.dart";

class CourseFrame extends StatefulWidget{
  int index = 0;
  List <Widget> pages = [Overview(), Lessons()];
  CourseFrame({super.key});

 @override 
 State<CourseFrame> createState() =>  _CourseFrameState();
}


class _CourseFrameState extends State<CourseFrame> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      constraints: const BoxConstraints(),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)
                    ),
                    const Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                    Image.asset("images/icons/Bookmark.png")
                  ],
                  
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset("images/Playback.png", width: size.width, fit: BoxFit.fitWidth,), 
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: IconButton(onPressed:(){}, icon: Image.asset("images/icons/play.png"))
                  )
                )
              ]
            ),
            SizedBox(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    width: 56,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Color(0xffFD853A),
                      borderRadius: BorderRadius.all(Radius.circular(3.0))
                    ),
                    child: const Center(child: Text("Hot",  style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(children: [Image.asset("images/tch.png"), Container(width: 10,), const Text("Anny Morriarty",)],),
                  ),
                  const Text(
                    "Comic drawing essential for everyone!",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:size.height*0.022),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                            Row(children: [
                              Image.asset("images/icons/clock.png"), 
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("1.hour 30 min", 
                                style:TextStyle(color:Colors.grey)),
                            )]),
                            Container(height: 6,),
                            Row(children: [
                              Image.asset("images/icons/e_star.png"), 
                              const Padding(
                                padding:  EdgeInsets.only(left: 5),
                                child: Text("4.7 (453)",
                                style:TextStyle(color:Colors.grey)),
                            )],)
                          ],
                        ),
                        Container(width: 10,),
                        Column(children: [
                          Row(children: [
                            Image.asset("images/icons/cam.png"), 
                            const Padding(
                              padding: EdgeInsets.only(left:5.0),
                              child: Text("12 Lessons",
                              style:TextStyle(color:Colors.grey),),
                          )],),
                          Container(height: 6,),
                          Row(children: [
                            Image.asset("images/icons/g_user.png"), 
                            const Padding(
                              padding: EdgeInsets.only(left:5.0),
                              child: Text("2k Students",style:TextStyle(color:Colors.grey)),
                          )],)
                        ],)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:size.height*0.011),
                    child: const SizedBox(
                      width: 335,
                      child: Text(
                        "Lectus vitae lorem luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id!"
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState((){
                      widget.index = 0;
                    });
                  },
                  child: Container(
                    width: size.width*0.5,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2.0, color: (widget.index == 0)?const Color(0xff265AE8):const Color(0xffE9EFFD) ), )
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0,0, size.width *0.05,size.width *0.02),
                      child: Text(
                        "Overview",
                        style: TextStyle(
                          fontSize: 22,
                          color: (widget.index == 0)? Colors.black : Color(0xff888C94)
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState((){
                      widget.index = 1;
                    });
                  },
                  child: Container(
                    width: size.width*0.5,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2.0, color: (widget.index == 1)?const Color(0xff265AE8):const Color(0xffE9EFFD) ), )
                    ), 
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(size.width *0.05,0, 0,size.width *0.02),
                      child: Text(
                        "Lessons",
                        style: TextStyle(
                          fontSize: 22,
                          color: (widget.index == 1)? Colors.black : Color(0xff888C94)
                        ),
                      ),
                    )
                  ),
                )
            ],),
            widget.pages[widget.index],
          ],  
        )
      ),
    );
  }

}

class Overview extends StatelessWidget{
  const Overview({super.key});

  @override 
  Widget build(BuildContext context){
    Size osize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const Text(
            "Introduction",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.005),
            child: const  SizedBox(
              width: 335,
              child: Text(
                "Ipsum quam imperdiet mollis massa bibendum odio vitae in vehicula augue ullamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff585D69)
                )
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.01),
            child: const SizedBox(
              width: 335,
              child: Text(
                "Tllamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff585D69)
                )
              )
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.03),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(osize.width,osize.height*0.06),
              ),
              onPressed: (){},
              child: const Text(
                "See more",
                style: TextStyle(
                    color: Color(0xff265AE8),
                    fontSize: 16,
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.03),
            child: const Text(
              "Feedback",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.03),
            child: Row(children: [
              Container(
                width: osize.width * 0.43,
                height: osize.height * 0.15,
                decoration: const BoxDecoration(
                  color:Color(0xffFFF1F3),
                  borderRadius: BorderRadius.all(Radius.circular(7.0))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icons/star.png"), 
                        const Text(
                          " 4.7",
                          style: TextStyle(fontSize: 15)
                        )],), 
                    const Text(
                      "Reviews",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      )
                    ),
                    ]
                ),
              ),
              const Spacer(),
              Container(
                width: osize.width * 0.43,
                height: osize.height * 0.15,
                decoration: const BoxDecoration(
                  color: Color(0xffFFF1F3),
                  borderRadius: BorderRadius.all(Radius.circular(7.0))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icons/g_user.png"), 
                        const Text(
                          " 753",
                          style: TextStyle(fontSize: 15)
                          )
                        ],
                    ), 
                    const Text(
                      "Students",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      )
                    )]
                ),
              )
            ],),
          ),

          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.032),
            child: Comment(location: "images/c1.png", handle: "mannes_sammy", time: "31 mins ago", comment:"Sed suspendisse elit sit trist gristi queget quis tristique pulectus!",),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.023),
            child: Comment(location: "images/c2.png", handle: "justing", time: "01 hour ago", comment: "Great suspendisse elit sit trist gristi"),
          ),
          Padding(
            padding:EdgeInsets.only(top: osize.height * 0.023) ,
            child: Comment(location: "images/c3.png", handle: "mouni", time: "11 hour ago", comment: "Flit sit trist gristi do musch!"),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.03),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(osize.width,osize.height*0.06),
              ),
              onPressed: (){},
              child: const Text(
                "Load more",
                style: TextStyle(
                    color: Color(0xff265AE8),
                    fontSize: 16,
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.035),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const Text(
                  "Project by student",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ),
                GreyButton(text: "Add Project", effect: (){})
              ]
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.03),
            child:  Wrap(
              spacing: osize.width * 0.04,
              runSpacing: osize.height * 0.03,
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(8), 
                  child: Image.asset("images/Project1.png")
                ), 
                ClipRRect(
                  borderRadius:BorderRadius.circular(8),
                  child: Image.asset("images/Project4.png")
                ), 
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("images/Project5.png"), 
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("images/Project6.png")
                )
            ],)
          ),
          Padding(
          padding: EdgeInsets.only(top: osize.height * 0.03),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size(osize.width,osize.height*0.06),
            ),
            onPressed: (){},
            child: const Text(
              "Load more",
              style: TextStyle(
                  color: Color(0xff265AE8),
                  fontSize: 16,
                )
            ),
          ),),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.035),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const Text(
                  "5 Comments",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
                ),
                GreyButton(text: "Add comment", effect: (){})
              ]
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.03),
            child: Comment(handle:"mouni", time: "11 mins ago   .   Student", comment: "How to get better at line? I am really stuck in this step!", likes: 21, replies: 1, location: 'images/c3.png', rpage: const Replies()),
          ),
          Padding(
            padding: EdgeInsets.only(top: osize.height * 0.03),
            child: Comment(location: "images/c4.png", handle: "simon", time: "31 mins ago   .   Student", comment: "Can you tell me how can i upload img to cloud saas?", likes: 10, rpage: const Replies())
          ),
        ]
      ),
    );
  }
}

class Lessons extends StatelessWidget{
  const Lessons({super.key});

  @override 
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Lesson(
          location:"images/l1.png",
          title: "Introduction to cimics drawing course",
          count: 1,
          content: "Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orcieu soft lectus nibh vulputate urna ut sed neque",
        ),
        Lesson(
          location:"images/l2.png",
          title: "Nulla sit mauris nunc of suscipit",
          count: 2,
          content: "Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orciceu soft lectus nibh vulputate urna ut sed neque",
        ),
        Lesson(
          location:"images/l3.png",
          title: "Tellus elementum jonys commodo nibh ",
          count: 3,
          content: "Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orciceu soft lectus nibh vulputate urna ut sed neque",
        ),
        Lesson(
          location:"images/l1.png",
          title: "Et semper vivamus sceler isq ue purus velit",
          count: 4,
          content: "Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orciceu soft lectus nibh vulputate urna ut sed neque",
        ),
        Lesson(
          location:"images/l4.png",
          title: "Aliquam praesent velit pellentesque donec",
          count: 5,
          content: "Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orciceu soft lectus nibh vulputate urna ut sed neque",
        ),
        Lesson(
          location:"images/l5.png",
          title: "Lobortis gravida adipg",
          count: 6,
          content: "Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orciceu soft lectus nibh vulputate urna ut sed neque",
        ),
        const Text(
          "Resources for download",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
        Resource(ext: "img", title: "practice class sketches", fsize:4, color: const Color(0xffFF6363)),
        Resource(ext: "pdf", title: "Home work sheets", fsize:2, color: const Color(0xffA0D7FF)),
        Resource(ext: "pdf", title: "Home work sheets", fsize:2, color: const Color(0xffA0D7FF))
      ],),
    );
  }
}