part of 'verification_cubit.dart';

sealed class VerificationState extends Equatable {
  const VerificationState();

  @override
  List<Object> get props => [];
}

final class VerificationInitial extends VerificationState {}

class VerificationLoading extends VerificationState {}

class VerificationSuccess extends VerificationState {
}

class VerificationFailed extends VerificationState {
  final String error;
  const VerificationFailed({required this.error});
  @override
  List<Object> get props => [error];
}
