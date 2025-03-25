import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_8/bloc/dashboard_cubit.dart';
import 'package:flutter_application_8/bloc/dashboard_view.dart';
import 'package:flutter_application_8/bloc/login_cubit.dart';
import 'package:flutter_application_8/bloc/loginview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoginCubit()),
        BlocProvider(create: (_) => ProductCubit()), // Corrected this line
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginView(),
      ),
    );
  }
}
