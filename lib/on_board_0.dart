

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_images.dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/app_color.dart';
import 'on_board_1.dart';

class onBoard0 extends StatefulWidget {
  onBoard0({super.key});

  @override
  State<onBoard0> createState() => _onBoard0State();
}

class _onBoard0State extends State<onBoard0> {

  void initState(){
    super.initState();
    navigate();
  }

void navigate(){
  Future.delayed(Duration(seconds: 3),(){
    Navigator.push(
        context as BuildContext, MaterialPageRoute(builder: (context) =>
        onBoard1()));
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Image.asset(AppImages.imgPath0),
                  SizedBox(height: 24,),
                  Text(AppStrings.splashTitle,style: GoogleFonts.lato(
                    fontSize: 40,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold
                  ),)
                ]
            )
        )
    );
  }
}