import 'dart:async';
import 'dart:io';

import 'package:eden_life_task/common/models/eden_user/eden_user.dart';
import 'package:eden_life_task/utilities/failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginRepository {
  /// This method is responsible for fetching my github repos
  Future<EdenUser> signInWithGitHub() async {
    try {
      // Create a new provider
      GithubAuthProvider githubProvider = GithubAuthProvider();

      final userCredential =
          await FirebaseAuth.instance.signInWithProvider(githubProvider);

      final user = userCredential.user;

      if (user != null) {
        return EdenUser(
          id: user.uid,
          name: user.displayName,
          email: user.email,
          photoUrl: user.photoURL,
        );
      } else {
        throw Failure("Something went wrong");
      }
    } on SocketException catch (_) {
      throw Failure("No internet connection");
    } on HttpException {
      throw Failure("Service not currently available");
    } on TimeoutException catch (_) {
      throw Failure("Poor internet connection");
    } on Failure catch (e) {
      throw Failure(e.message);
    } on TypeError catch (_) {
      throw Failure("Data not available at the moment");
    } catch (_) {
      throw Failure("Something went wrong. Try again");
    }
  }

  Future<EdenUser> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      final user = userCredential.user;

      if (user != null) {
        return EdenUser(
          id: user.uid,
          name: user.displayName,
          email: user.email,
          photoUrl: user.photoURL,
        );
      } else {
        throw Failure("Something went wrong");
      }
    } on SocketException catch (_) {
      throw Failure("No internet connection");
    } on HttpException {
      throw Failure("Service not currently available");
    } on TimeoutException catch (_) {
      throw Failure("Poor internet connection");
    } on Failure catch (e) {
      throw Failure(e.message);
    } on TypeError catch (_) {
      throw Failure("Data not available at the moment");
    } catch (_) {
      throw Failure("Something went wrong. Try again");
    }
  }
}
