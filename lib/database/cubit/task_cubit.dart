import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/database/cubit/task_state.dart';

import '../../core/utils/app_color.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
  int currentIndex = 0;

  DateTime currentDate = DateTime.now();
  String currentStartTime = DateFormat('hh:mm a').format(DateTime.now());
  String currentEndTime = DateFormat('hh:mm a').format(DateTime.now());

  void getDate(context)async{
    emit(GetDataLoadingState());
    DateTime ? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
      if(pickedDate != null){
        currentDate = pickedDate;
        emit(GetDataSucessState());

      }
      else{
        print('pickedDate == null');
        emit(GetDataErorrState());

      }

  }
  void getStartTime(context)async{
    emit(GetEndTimeLoadingState());
    TimeOfDay ? startTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(DateTime.now())
    );
  if(startTime != null) {
    currentStartTime = startTime!.format(context);
    emit(GetStartTimeSucessState());
  }
  else {
    print('startTime = null');
    emit(GetStartTimeErorrState());
  }

  }
  void getEndTime(context)async{
    emit(GetEndTimeLoadingState());
    TimeOfDay ? endTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(DateTime.now())
    );
     if(endTime != null) {
       currentEndTime = endTime!.format(context);
       emit(GetEndTimeSucessState());
     }
    else {
      print('endTime = null');
      emit(GetEndTimeErorrState());
     }
  }
  Color getColor(index){
    switch(index){
      case 0 : return AppColor.choice1;
      case 1 : return AppColor.choice2;
      case 2 : return AppColor.choice3;
      case 3 : return AppColor.choice4;
      case 4 : return AppColor.choice5;
      case 5 : return AppColor.choice6;
      default: return AppColor.backGround;
    }
  }
  void checkColorIndex (index){

     currentIndex = index;
     emit(CheckColorIndexState());

  }
}