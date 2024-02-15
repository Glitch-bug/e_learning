import 'package:e_learning/home/section.dart';
import "package:flutter/material.dart";

class EmptSearch extends StatefulWidget {
  const EmptSearch({super.key});

  @override
  State<EmptSearch> createState() => _EmptSearchState();
}

class _EmptSearchState extends State<EmptSearch> {
  bool avai = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
          child: SizedBox(
            width: 312,
            height: 201,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Top searches",
                    style: TextStyle(fontSize: 15, color: Color(0xff585D69)),
                    textAlign: TextAlign.left),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffEDEEF0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(22, 11.5, 22, 11.5),
                        child: Text("photography",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffEDEEF0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(22, 11.5, 22, 11.5),
                        child: Text("Craft",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffEDEEF0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(22, 11.5, 22, 11.5),
                        child: Text("art",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffEDEEF0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(22, 11.5, 22, 11.5),
                        child: Text("procreate",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffEDEEF0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(22, 11.5, 22, 11.5),
                        child: Text("market",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffEDEEF0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(22, 11.5, 22, 11.5),
                        child: Text("UX design",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom:28.0),
          child: Text("Categories",
              style: TextStyle(fontSize: 15, color: Color(0xff585D69)),
              textAlign: TextAlign.left),
        ),
        TImage(location: "images/1.png", label: "Interior design", location1: "images/2.png", label1: "Traditional art"),
        TImage(location: "images/3.png", label: "3D Animation", location1: "images/4.png", label1: "Marketing"),
        TImage(location: "images/5.png", label: "Photography", location1: "images/ix.png", label1: "Caligraphy & lettering"),
        TImage(location: "images/7.png", label: "UX Design", location1: "images/8.png", label1: "Web develop"),

      ],
    );
  }
}
