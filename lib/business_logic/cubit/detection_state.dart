part of 'detection_cubit.dart';

sealed class DetectionState extends Equatable {
  const DetectionState();

  @override
  List<Object> get props => [];
}

final class DetectionInitial extends DetectionState {}

class DetectionLoading extends DetectionState {}

class DetectionError extends DetectionState {
  final String message;

  const DetectionError(this.message);

  @override
  List<Object> get props => [message];
}

class StreetDetectionSuccess extends DetectionState {
  final dynamic value;

  const StreetDetectionSuccess(this.value);

  @override
  List<Object> get props => [value];
}


class StatueDetectionSuccess extends DetectionState {
  final String className;

  const StatueDetectionSuccess(this.className);

  @override
  List<Object> get props => [className];
}


