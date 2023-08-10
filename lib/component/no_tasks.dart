import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/utils/app_color.dart';
import '../core/utils/app_images.dart';
import '../core/utils/app_strings.dart';

class NoTasks extends StatelessWidget {
  NoTasks({super.key,});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
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


        ],
      );
  }
}