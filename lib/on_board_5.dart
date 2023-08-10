import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_strings.dart';

import 'core/utils/app_color.dart';
import 'database/cubit/task_cubit.dart';
import 'database/cubit/task_state.dart';
import 'on_board_6.dart';
class onBoard5 extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.backGround,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
        icon: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text(AppStrings.addTask,
            style: GoogleFonts.lato(
            fontSize: 32,
            fontWeight: FontWeight.w700,)
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: BlocBuilder<TaskCubit , TaskState>(
            builder: (context,state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //Title

                Text(AppStrings.title,
                  style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                    color: AppColor.white
                ),
                ),
               SizedBox(height: 8.h,),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  //hint
                  hintText: AppStrings.hintTitle,
                    hintStyle: TextStyle(color: AppColor.white),
                    //focused
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.skip),borderRadius:BorderRadius.circular(5),
                  ),
                  //enabled
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColor.skip),
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: AppColor.bColor,filled: true
                ),


                ),
                  SizedBox(height: 24.h),

                  //Note

                  Text(AppStrings.note,
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white
                    ),
                  ),
                  SizedBox(height: 8.h,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    
                    decoration: InputDecoration(
                      //hint
                        hintText: AppStrings.hintNote,
                        hintStyle: TextStyle(color: AppColor.white),
                        //focused
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.skip),borderRadius:BorderRadius.circular(5),
                        ),
                        //enabled
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.skip),
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: AppColor.bColor,filled: true
                    ),


                  ),
                  SizedBox(height: 24.h),

                  //Date

                  Text(AppStrings.date,
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white
                    ),
                  ),
                  SizedBox(height: 8.h,),
                  TextFormField(
                    readOnly: true,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: ()async{
                          BlocProvider.of<TaskCubit>(context).getDate(context);
                        },
                        icon: Icon(Icons.calendar_month_outlined),color: AppColor.white,),

                      //hint
                        hintText: DateFormat.yMd().format(BlocProvider.of<TaskCubit>(context).currentDate),
                        hintStyle: TextStyle(color: AppColor.white),

                        //focused
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.skip),borderRadius:BorderRadius.circular(5),
                        ),
                        //enabled
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.skip),
                            borderRadius: BorderRadius.circular(5)),
                        fillColor: AppColor.bColor,filled: true
                    ),


                  ),

                  SizedBox(height: 24.h),

                  //Start & End Time

                  Row(
                    children: [
                      // Start Time
                      Container(
                        height: 90,
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppStrings.startTime,
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.white
                              ),
                            ),
                            SizedBox(height: 8,),
                            TextFormField(
                              readOnly: true,
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: ()async{
                                      BlocProvider.of<TaskCubit>(context).getStartTime(context);
                                    },
                                    icon:Icon(Icons.timer_outlined),color: AppColor.white,),
                                  //hint
                                  hintText: BlocProvider.of<TaskCubit>(context).currentStartTime,
                                  hintStyle: TextStyle(color: AppColor.white),
                                  //focused
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: AppColor.skip),borderRadius:BorderRadius.circular(5),
                                  ),
                                  //enabled
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColor.skip),
                                      borderRadius: BorderRadius.circular(5)),
                                  fillColor: AppColor.bColor,filled: true
                              ),


                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 62,),
                      //End Time
                      Container(
                        height: 90,
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(AppStrings.endTime,
                            style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColor.white
                            ),
                          ),
                          SizedBox(height: 8,),
                          TextFormField(
                            readOnly: true,
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: ()async{
                                    BlocProvider.of<TaskCubit>(context).getEndTime(context);
                                  },
                                  icon:Icon(Icons.timer_outlined),color: AppColor.white,),
                                //hint
                                hintText: BlocProvider.of<TaskCubit>(context).currentEndTime,
                                hintStyle: TextStyle(color: AppColor.white),
                                //focused
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColor.skip),borderRadius:BorderRadius.circular(5),
                                ),
                                //enabled
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: AppColor.skip),
                                    borderRadius: BorderRadius.circular(5)),
                                fillColor: AppColor.bColor,filled: true
                            ),


                          ),
                        ],),
                      )
                    ],),

                  SizedBox(height: 24.h),

                  //Color

                  Text(AppStrings.colorChoose,
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 68.h,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          separatorBuilder: (context,index) =>
                              SizedBox(width: 8.w,),
                      itemBuilder: (context,index){

                            return GestureDetector(
                              onTap: (){
                                BlocProvider.of<TaskCubit>(context).checkColorIndex(index);
                                },
                              child: CircleAvatar(
                                backgroundColor: BlocProvider.of<TaskCubit>(context).getColor(index),
                                child: index == BlocProvider.of<TaskCubit>(context).currentIndex ?Icon(Icons.check,color: AppColor.white,):null
                              ),
                            );
                      },
                      ),
                          ),

                  //Elevated Button
                  SizedBox(height: 24.h),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>
                              onBoard6()));
                        },
                        child:
                        Text(AppStrings.createTask,
                          style: GoogleFonts.lato(
                              color: AppColor.white, fontSize: 16,fontWeight: FontWeight.w400),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            )
                        ),
                    ),
                  )

              ],
              );
            }
          ),
        ),
      ),
    );
  }
}