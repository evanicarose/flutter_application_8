import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login_cubit.dart';
import 'dashboard_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 300,
          child: OutlinedButton(
            onPressed: () {
              context.read<LoginCubit>().login();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DashboardView()),
              );
            },
            child: const Text("Login"),
          ),
        ),
      ),
    );
  }
}