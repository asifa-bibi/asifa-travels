import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_second_project/cubit/app_cubit_logics.dart';
import 'package:my_second_project/cubit/app_cubits.dart';
import 'package:my_second_project/pages/detail-page.dart';
import 'package:my_second_project/pages/WelcomePage.dart';
import 'package:my_second_project/pages/navpages/main-page.dart';
import 'package:my_second_project/services/data_services.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(
          data:DataServices(),
        ),
        child: AppCubitLogics(),
      )
    );
  }
}