import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<bool> {
  LoginCubit() : super(false);

  void login() => emit(true);
  void logout() => emit(false);
}
