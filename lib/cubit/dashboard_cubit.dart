import 'package:classassignment2/cubit/areaofcircle_cubit.dart';
import 'package:classassignment2/cubit/areaofcircle_cubit_view.dart';
import 'package:classassignment2/cubit/simpleinterest_cubit.dart';
import 'package:classassignment2/cubit/simpleinterest_cubit_view.dart';
import 'package:classassignment2/cubit/student_cubit.dart';
import 'package:classassignment2/cubit/student_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._areaOfCircleCubit,
    this._simpleInterestCubit,
    this._studentCubit,
  ) : super(null);

  final AreaOfCircleCubit _areaOfCircleCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final StudentCubit _studentCubit;

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AreaOfCircleCubitView(),
      ),
    );
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SimpleInterestCubitView(),
      ),
    );
  }

  void openCounterView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StudentCubitView(),
      ),
    );
  }
}
