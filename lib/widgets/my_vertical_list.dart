import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyVerticalList extends StatelessWidget {
  const MyVerticalList(
    {Key? key,
    required this.courseImage,
    required this.courseTitle,
    required this.courseDuration,
    required this.courseRating}) 
    : super(key:key);



  final String courseImage, courseTitle, courseDuration;
  final double courseRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height:92, 
              width: MediaQuery.of(context).size.width-
              (MediaQuery.of(context).size.width * 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff3E3A6D),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 13,
                    offset: const Offset(0, 4),
                  )
                ]
                ),
            ),
              Padding(
                padding: const EdgeInsets.only(
                left: 26,
                bottom: 19,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 115,
                      width: 115,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(courseImage)
                        )
                         ),
                    ),
                    Padding(padding: const EdgeInsets.only(
                      left: 10), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.
                        start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            courseTitle,
                          )
                        ],
                        )
                    )
                  ],
                  )
                )  
              
          ],
          )
           ),
    );
  }
}