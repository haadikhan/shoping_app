import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/auth/signin/bloc/signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninState(email: '', password: ''));

  emailChanged(String value) {
    emit(SigninState(email: value, password: state.password));
  }

  passwordchanged(String value) {
    emit(SigninState(email: state.email, password: value));
  }
}
