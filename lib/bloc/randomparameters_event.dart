part of 'randomparameters_bloc.dart';

@immutable
abstract class RandomparametersEvent {}

class GetRandomParametersEvent extends RandomparametersEvent {
  final int? minSize;
  final int? maxSize;

  GetRandomParametersEvent({this.minSize = 10, this.maxSize = 300});
}
