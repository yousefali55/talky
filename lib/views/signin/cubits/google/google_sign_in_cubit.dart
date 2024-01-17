
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
part 'google_sign_in_state.dart';
class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  GoogleSignInCubit() : super(GoogleSignInInitial());
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signInWithGoogle() async {
    emit(GoogleSignInLoading());
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount == null) {
        return;
      }
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final userCredential = await auth.signInWithCredential(credential);
      emit(GoogleSignInSuccess(userCredential.user!));
    }
    catch(e){
      emit(GoogleSignInError(error: 'Error i'));
    }
  }
}

