import 'package:designing_online_course_app_ui_borja/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'Master Class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                // Add more widgets here as needed
              ],
            ),
            const SizedBox(height: 22,),
            SizedBox(height: 349,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index){ 
               return const MyHorizontalList(
                startColor: 0xFF9288E4,
                endColor: 0xFF534EA7,
                courseHeadline:'Recommended' ,
                courseTitle: 'UI/UX DESIGNER\nBEGINNER',
                courseImage: 'assets/images/img_saly10.png'
                );
                  }
                  ),
                  ),
                  const SizedBox(
                    height: 34,
                    ),
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free online class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'From over 80 lectures',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff9C9A9A),
                    fontSize: 14,
                  ),
                ),
                // Add more widgets here as needed
              ],
            ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index){
                return const MyVerticalList(
                  courseImage: 'assets/images/img_saly24', 
                  courseTitle: 'Flutter Developer', 
                  courseDuration: '8 Hours', 
                  courseRating: 3.0);
              })
          ],
        ),
      ),
    );
  }
}