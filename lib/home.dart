import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: HexColor("#03045e"),
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Column(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.height * 0.90,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 7),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(12, 42, 12, 24),
                    color: Colors.indigo.shade700.withOpacity(0.4),
                    child: Column(
                      children: [
                        SizedBox(height: 24),
                        Text(
                          'Say Something',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Write an anonymous message for Inside_cua',
                          style: GoogleFonts.lato(
                            color: Colors.indigo.shade100,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),

                        //textformfield

                        //     SizedBox(
                        //       width: MediaQuery.of(context).size.width * 0.50,
                        //       //  height: MediaQuery.of(context).size.height * 0.20,,
                        //       child: TextField(
                        //         //  maxLines: 20,
                        //         decoration:
                        //             InputDecoration(labelText: 'Say Something'),
                        //       ),
                        //     ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ])),
        ),
      ),
    );
  }
}
