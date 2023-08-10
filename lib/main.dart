import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/database/cubit/task_cubit.dart';
import 'package:to_do_app/model/model_task.dart';
import 'package:to_do_app/on_board_2.dart';

import 'core/bloc/observer.dart';
import 'core/utils/app_color.dart';
import 'on_board_0.dart';
import 'on_board_1.dart';
import 'on_board_3.dart';
import 'on_board_6.dart';

void main() {

  Bloc.observer = MyBlocObserver();
  runApp(ScreenUtilInit(
    designSize: Size(375, 812),
    builder: (context , child){
      return BlocProvider(
        create: (context) => TaskCubit(),
        child: MaterialApp(
            title: AppStrings.appName,
            theme: ThemeData(
            scaffoldBackgroundColor: AppColor.backGround
        ),
        debugShowCheckedModeBanner: false,
        home: onBoard0(),
        ),
      );
    },
    ),
  );
  //runApp(const SecondScreen());
  //runApp(FirstScreen());
}