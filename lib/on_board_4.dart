import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_strings.dart';

import 'core/utils/app_color.dart';
import 'core/utils/app_images.dart';
import 'on_board_5.dart';
class onBoard4 extends StatelessWidget {
  onBoard4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            // date now
            Text(
              DateFormat.yMMMMd().format(DateTime.now()),
            style: GoogleFonts.lato(
              color: AppColor.white,
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),

            ),
            SizedBox(height: 12,),
            //Today Text
            Text(AppStrings.today,
              style: GoogleFonts.lato(
                  color: AppColor.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),
            ),
                SizedBox(height: 6,),
                //Date Bar
                DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: AppColor.primary,
                  selectedTextColor: AppColor.white,
                  dateTextStyle: TextStyle(color: AppColor.white,fontSize: 16),
                  dayTextStyle: TextStyle(color: AppColor.white,fontSize: 16),
                  monthTextStyle: TextStyle(color: AppColor.white,fontSize: 16),
                  onDateChange: (date) {
                    // New date selected
                    //setState(() {
                      //_selectedValue = date;
                    //});
                  },
                ),
                SizedBox(height: 11,),
                //Image
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 227,
                        width: 227,
                        child: Image.asset(AppImages.imgPath4)),
                  ],
                ),
              //Text title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppStrings.boardTitle4,
                    style: GoogleFonts.lato(
                    color: AppColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                  ),
                  ),
                ],
              ),
                SizedBox(height: 10,),
                //Text SubTitle
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.boardSubTitle4,
                      style: GoogleFonts.lato(
                          color: AppColor.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                )
          ]

          ),
        ),
               // Add Button
               floatingActionButton :FloatingActionButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                    onBoard5()));
                  },
                child: Icon(Icons.add),
                 backgroundColor: AppColor.primary,


                  )





      ),
    );
  }
}