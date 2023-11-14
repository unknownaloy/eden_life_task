import 'package:eden_life_task/common/models/eden_user/eden_user.dart';
import 'package:eden_life_task/common/unions/request_state/request_state.dart';
import 'package:eden_life_task/feature/login/data/repository/login_repository.dart';
import 'package:eden_life_task/utilities/failure.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginRepository _loginRepository;

  LoginViewModel({
    required LoginRepository loginRepository,
  }) : _loginRepository = loginRepository;

  RequestState _requestState = const RequestState.idle();
  RequestState get requestState => _requestState;

  EdenUser? _edenUser;
  EdenUser? get edenUser => _edenUser;

  Future<void> loginWithGoogle() async {
    try {
      _requestState = const RequestState.loading();

      _edenUser = await _loginRepository.signInWithGoogle();

      _requestState = const RequestState.success();
    } on Failure catch (err) {
      _requestState = RequestState.error(message: err.message);
    } finally {
      notifyListeners();
    }
  }
}
