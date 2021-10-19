import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);
  int _len = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: HexColor("#03045e"),
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 100,
                      maxWidth: 600,
                    ),
                    // width: MediaQuery.of(context).size.width * 0.50,
                    // height: MediaQuery.of(context).size.height * 0.90,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 7),
                        child: Card(
                          margin: EdgeInsets.fromLTRB(12, 24, 12, 24),
                          color: Colors.indigo.shade700.withOpacity(0.4),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 14, 24, 16),
                            child: Column(
                              children: [
                                SizedBox(height: 24),
                                Text(
                                  'Say Something',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 48,
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
                                SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  height: 250,
                                  child: TextFormField(
                                    maxLength: _len,
                                    maxLines: 30,
                                    decoration: InputDecoration(
                                        //counterText: '$_len characters left',
                                        counterStyle:
                                            TextStyle(color: Colors.white),
                                        labelText: 'Say Something',
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        labelStyle: GoogleFonts.lato(
                                            fontSize: 12, color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  height: 24,
                                ),

                                Container(
                                  // color: Colors.grey.shade500,
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  height: 160,
                                  child: GFBorder(
                                    dashedLine: [4, 6],
                                    type: GFBorderType.rect,
                                    color: Colors.white30,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Upload file'),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'upload videos, images,pdf\'s',
                                            style: GoogleFonts.lato(
                                              fontSize: 12,
                                              color: HexColor('757575'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 24,
                                ),

                                SizedBox(
                                  height: 38,
                                  width:
                                      MediaQuery.of(context).size.width * 0.40,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        gradient: LinearGradient(colors: [
                                          HexColor('FF6D00'),
                                          HexColor('E65100'),
                                        ])),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent),
                                      child: Text('Submit'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ])),
          ),
        ),
      ),
    );
  }
}
