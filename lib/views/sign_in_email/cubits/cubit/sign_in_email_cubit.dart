import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
part 'sign_in_email_state.dart';
class SignInEmailCubit extends Cubit<SignInEmailState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  SignInEmailCubit() : super(SignInEmailInitial());
  void signInEmail() async {
    try {
      emit(SignInEmailLoading());
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        emit(SignInEmailSuccess());
    } catch (errorMessage) {
        if (errorMessage == 'user-not-found') {
          emit(SignInEmailFailure(
              errorMessage: 'No user found for that email.'),);
        } else if (errorMessage == 'wrong-password') {
          emit(SignInEmailFailure(errorMessage: 'Wrong password provided for that user.'));
        }
      emit(SignInEmailFailure(errorMessage: errorMessage.toString()));
    }
  }
}

