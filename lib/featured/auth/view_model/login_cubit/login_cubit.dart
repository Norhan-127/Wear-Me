import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

 late bool isVisible=false;
 changePasswordVisibility(bool visible){
   isVisible=visible;
   emit(PasswordVisibilityState() );
 }
}
