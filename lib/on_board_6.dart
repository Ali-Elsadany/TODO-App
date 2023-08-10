import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/model/model_task.dart';
import 'component/no_tasks.dart';
import 'component/task_component.dart';
import 'core/utils/app_color.dart';
import 'core/utils/app_images.dart';
import 'core/utils/app_strings.dart';
import 'on_board_4.dart';
import 'on_board_5.dart';

class onBoard6 extends StatelessWidget {
  onBoard6({super.key,});

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
                  SizedBox(height: 24,),
                  //Container of Tasks + Button


                    TaskModel.tasksList.isEmpty?
                    NoTasks():
                         Expanded(
                           child: ListView.builder(
                             itemCount: TaskModel.tasksList.length,
                             itemBuilder: (context,index){
                               return InkWell(
                                   onTap: (){
                                     showModalBottomSheet(context: context, builder: (context){
                                       return Container(
                                         height: 300,
                                         color: AppColor.sec,
                                         //Buttons
                                         child: Padding(
                                           padding: const EdgeInsets.all(24),
                                           child: Column(
                                             children: [

                                               //Task Comleted
                                               SizedBox(
                                                 height: 50,
                                                 width: double.infinity,
                                                 child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                                   backgroundColor: AppColor.primary,

                                                 ),
                                                     child:
                                                     Text(AppStrings.taskCompleted,
                                                       style: GoogleFonts.lato(

                                                       ),
                                                     )
                                                 ),
                                               ),
                                               SizedBox(height: 30,),

                                               //Delete
                                               SizedBox(
                                                 height: 50,
                                                 width: double.infinity,
                                                 child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                                                   backgroundColor: Color(0xffE57373),

                                                 ),
                                                     child:
                                                     Text(AppStrings.deleteTask,
                                                       style: GoogleFonts.lato(

                                                       ),
                                                     )
                                                 ),
                                               ),
                                               SizedBox(height: 30,),

                                               //cancel
                                               SizedBox(
                                                 height: 50,
                                                 width: double.infinity,
                                                 child: ElevatedButton(onPressed: (){
                                                   Navigator.pop(context);
                                                 },
                                                     style: ElevatedButton.styleFrom(
                                                       backgroundColor: AppColor.primary,
                                                     ),
                                                     child:
                                                     Text(AppStrings.cancel,
                                                       style: GoogleFonts.lato(
                                                       ),
                                                     )
                                                 ),
                                               )
                                             ],
                                           ),
                                         ),
                                       );
                                     }
                                     );
                                   },
                                   child: TaskComponent(
                                     taskModel: TaskModel.tasksList[index],
                                   )


                               );
                             },

                           ),
                         ),

                  SizedBox(height: 24,),


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
