import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required  int index}){
      return  InkWell(
        onTap: (){
          setState(() {
            selectedItem = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff1D1E3C),
                  fontWeight: index == selectedItem ? FontWeight.w500 : FontWeight.w300),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedItem ? Color(0xffFE998D) : Colors.transparent
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
              child: Column(
                children: [
                  //NOTE : NAVIGATOR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          navItem(title: 'Guides', index: 0),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),
                          navItem(title: 'Pricing', index: 1),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),
                          navItem(title: 'Teams', index: 2),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.025,),
                          navItem(title: 'Story', index: 3),
                        ],
                      ),
                      Image.asset(
                        'button.png',
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 53,
                      )
                    ],
                  ),
                  //Note : CONTENT
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Image.asset(
                    'images.png',
                    height: 550,
                  ),
                  //NOTE : FOOTER
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Icon_down_solid.png',
                        width: 24,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Scroll to Learn More',
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
