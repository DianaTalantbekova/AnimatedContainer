part of 'randomparameters_bloc.dart';

@immutable
abstract class RandomparametersState {}

class RandomparametersInitial extends RandomparametersState {}

class RandomParameterState extends RandomparametersState {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Color textColor;

  RandomParameterState(
      {required this.textColor,
      required this.text,
      required this.width,
      required this.height,
      required this.color});
}
