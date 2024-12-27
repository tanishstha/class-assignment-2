import 'package:classassignment2/cubit/areaofcircle_cubit.dart';
import 'package:classassignment2/cubit/dashboard_cubit.dart';
import 'package:classassignment2/cubit/dashboard_cubit_view.dart';
import 'package:classassignment2/cubit/simpleinterest_cubit.dart';
import 'package:classassignment2/cubit/student_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AreaOfCircleCubit()),
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(create: (context) => StudentCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<AreaOfCircleCubit>(),
            context.read<SimpleInterestCubit>(),
            context.read<StudentCubit>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc',
        home: DashboardView(),
      ),
    );
  }
}
