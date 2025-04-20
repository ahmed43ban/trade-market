import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/signUp/domain/entities/SignUpEntity/SignUpEntity.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/SignUpUseCase.dart';

part 'sign_up_view_model_state.dart';
@injectable
class SignUpViewModelCubit extends Cubit<SignUpViewModelState> {
  @factoryMethod
  SignUpViewModelCubit(this.signUpUseCase) : super(SignUpViewModelInitial());
  SignUpUseCase signUpUseCase;
  //loading
  registerNewUser({required String name ,
    required String email,
    required String phone,
    required String password,
    required String rePassword})async{
    emit(SignUpLoadingState());
    var result= await signUpUseCase.call(name: name,
        email: email,
        phone: phone,
        password: password,
        rePassword: rePassword);
    result.fold((signUpEntity){
//success
    emit(SignUpSuccessState(signUpEntity));
    },(error){
//error
    emit(SignUpErrorState(error));
    });
  }
}
