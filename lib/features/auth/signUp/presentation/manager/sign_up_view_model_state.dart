part of 'sign_up_view_model_cubit.dart';

sealed class SignUpViewModelState {}

final class SignUpViewModelInitial extends SignUpViewModelState {}
class SignUpLoadingState extends SignUpViewModelState {}
class SignUpErrorState extends SignUpViewModelState {
  String message ;
  SignUpErrorState(this.message);
}
class SignUpSuccessState extends SignUpViewModelState {
  SignUpEntity signUpEntity;
  SignUpSuccessState(this.signUpEntity);
}