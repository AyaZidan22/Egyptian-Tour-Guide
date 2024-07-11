part of 'face_swap_cubit.dart';

sealed class FaceSwapState extends Equatable {
  const FaceSwapState();

  @override
  List<Object> get props => [];
}

final class FaceSwapInitial extends FaceSwapState {}

class FaceSwapLoading extends FaceSwapState {}

class FaceSwapError extends FaceSwapState {
  final String message;

  const FaceSwapError(this.message);

  @override
  List<Object> get props => [message];
}

class FaceSwapSuccess extends FaceSwapState {
  final String resultImageUrl;

  const FaceSwapSuccess(this.resultImageUrl);

  @override
  List<Object> get props => [resultImageUrl];
}
