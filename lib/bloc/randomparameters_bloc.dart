import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'randomparameters_event.dart';
part 'randomparameters_state.dart';

class RandomparametersBloc
    extends Bloc<RandomparametersEvent, RandomparametersState> {
  RandomparametersBloc() : super(RandomparametersInitial()) {
    double width = 0;
    double height = 0;
    List<Color> listColors = [
      Colors.red,
      Colors.black,
      Colors.brown,
      Colors.indigo,
      Colors.lime,
    ];
    List<Color> listTextColors = [
      Colors.blue,
      Colors.pink,
      Colors.brown,
      Colors.green,
      Colors.grey,
    ];
    List<String> listOfStrings = [
      'qwerty1',
      'qwerty2',
      'qwerty3',
      'qwerty4',
      'qwerty5'
    ];
    on<GetRandomParametersEvent>(
      (event, emit) {
        width =
            (event.minSize! + Random().nextInt(event.maxSize! - event.minSize!))
                .toDouble();
        height =
            (event.minSize! + Random().nextInt(event.maxSize! - event.minSize!))
                .toDouble();
        String text = listOfStrings[Random().nextInt(listOfStrings.length)];
        Color textColor =
            listTextColors[Random().nextInt(listTextColors.length)];
        Color textColor2 = listColors[Random().nextInt(listTextColors.length)];

        emit(RandomParameterState(
            color: textColor,
            textColor: textColor2,
            height: height,
            width: width,
            text: text));
      },
    );
  }
}
