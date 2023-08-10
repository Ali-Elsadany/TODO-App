import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/app_color.dart';
import 'core/utils/app_images.dart';
import 'core/utils/app_strings.dart';
import 'on_board_3.dart';

class onBoard2 extends StatelessWidget{
  onBoard2 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30,),
              // Skip
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>
                          onBoard3()));
                    },
                    child: Text(AppStrings.skip,style:GoogleFonts.lato(color: AppColor.skip),),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //Image
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(AppImages.imgPath2)),
              SizedBox(
                height: 48,
              ),
              // Title
              Text(AppStrings.boardTitle2,
                style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white),

              ),
              SizedBox(height: 50,),
              // subTitle
              Text(AppStrings.boardSupTitle2,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColor.white.withOpacity(0.8700000047683716)
                ),
                textAlign: TextAlign.center,
              ),
              // Next
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Text(AppStrings.back,style: GoogleFonts.lato(color: AppColor.skip),)
                          ],
                        ),
                    ),
                  ),

                  Spacer(),
              Row(

                children: [
                  SizedBox(
                    height: 48,
                    width: 104,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>
                              onBoard3()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(AppStrings.next,style: GoogleFonts.lato(fontSize: 16),),
                            SizedBox(
                              width: 10,
                            ),

                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            )
                        )
                    ),
                  ),
                ],
              )
                ],
              ),
            ],
          ),
        )




    );
  }

}