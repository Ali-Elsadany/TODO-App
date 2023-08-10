import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/app_color.dart';
import 'core/utils/app_images.dart';
import 'core/utils/app_strings.dart';
import 'on_board_4.dart';

class onBoard3 extends StatelessWidget{
  onBoard3 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30,),

              SizedBox(
                height: 60,
              ),
              //Image
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(AppImages.imgPath3)),
              SizedBox(
                height: 48,
              ),
              // Title
              Text(AppStrings.boardTitle3,
                style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColor.white),

              ),
              SizedBox(height: 50,),
              // subTitle
              Text(AppStrings.boardSupTitle3,
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColor.white.withOpacity(0.8700000047683716)
                ),
                textAlign: TextAlign.center,
              ),
              // Back
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
              // Get Started
                  Spacer(),
                  Row(
                    children: [
                      SizedBox(
                        height: 48,
                        width: 164,
                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) =>
                                  onBoard4()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(AppStrings.getStarted,style: GoogleFonts.lato(fontSize: 16),),
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