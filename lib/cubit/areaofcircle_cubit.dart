import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class AreaOfCircleCubit extends Cubit<double> {
  AreaOfCircleCubit() : super(0.0);

  void calculateArea(double radius) {
    emit(pi * radius * radius);
  }
}
