import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/auth/signin/bloc/signin_cubit.dart';
import 'package:shoping_app/auth/signin/bloc/signin_state.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SigninCubit, SigninState>(builder: (context, state) {
        return Column(
          children: [
            TextField(
              onChanged: (value) =>
                  context.read<SigninCubit>().emailChanged(value),
              decoration: InputDecoration(
                  errorText: state.email.length > 5 ? null : 'too short'),
            ),
            TextField(),
            Text(state.email),
            Text(state.password),
          ],
        );
      }),
    );
  }
}
