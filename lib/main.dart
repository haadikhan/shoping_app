import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping_app/auth/signin/bloc/signin_cubit.dart';
import 'package:shoping_app/auth/signin/view/signin_screen.dart';
import 'furniture_shoping_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => SigninCubit(),
        child: SigninScreen(),
      ),
    );
  }
}
