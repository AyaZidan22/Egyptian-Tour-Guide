part of 'reset_password_request_cubit.dart';

sealed class ResetPasswordRequestState extends Equatable {
  const ResetPasswordRequestState();

  @override
  List<Object> get props => [];
}

final class ResetPasswordRequestInitial extends ResetPasswordRequestState {}

class ResetPasswordRequestLoading extends ResetPasswordRequestState {}

class ResetPasswordRequestPending extends ResetPasswordRequestState {}

class ResetPasswordRequestFailure extends ResetPasswordRequestState {
  final String error;

  const ResetPasswordRequestFailure(this.error);
  @override
  List<Object> get props => [error];
}
