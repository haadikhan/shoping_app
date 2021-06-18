import 'package:equatable/equatable.dart';

class SigninState extends Equatable {
  String email;
  String password;

  SigninState({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
