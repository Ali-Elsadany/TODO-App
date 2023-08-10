import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/utils/app_color.dart';
import '../core/utils/app_strings.dart';
import '../model/model_task.dart';

class TaskComponent extends StatelessWidget{
  TaskComponent({super.key, required this.taskModel});
  final TaskModel taskModel;
  @override
  Widget build(BuildContext context) {

    return Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.choice1,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //Task title and time
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(taskModel.title,
                          style: GoogleFonts.lato(
                              color: AppColor.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(Icons.timer_outlined,color: AppColor.white,),
                            SizedBox(width: 8,),
                            Text('${taskModel.startTime} - ${taskModel.endTime}',style: GoogleFonts.lato(
                                color: AppColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text(taskModel.note,
                          style: GoogleFonts.lato(
                              color: AppColor.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Line
                  Container(
                    height: 80,
                    width: 1.5,
                    decoration: BoxDecoration(
                        color: AppColor.white
                    ),),
                  SizedBox(width: 9,),
                  //to-do title
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      taskModel.isCompleted?AppStrings.completed :AppStrings.todo,
                      style: GoogleFonts.lato(
                          color: AppColor.white,fontSize: 16),
                    ),
                  ),

                ],
              ),
            ),
      margin: EdgeInsets.only(bottom: 24),
          );



  }

}