import 'package:eden_life_task/common/models/eden_user/eden_user.dart';
import 'package:eden_life_task/common/service/storage_service.dart';
import 'package:eden_life_task/common/unions/request_state/request_state.dart';
import 'package:eden_life_task/feature/login/data/repository/login_repository.dart';
import 'package:eden_life_task/utilities/failure.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginRepository _loginRepository;
  final StorageService _storageService;

  LoginViewModel({
    required LoginRepository loginRepository,
    required StorageService storageService,
  })  : _loginRepository = loginRepository,
        _storageService = storageService;

  RequestState _googleRequestState = const RequestState.idle();
  RequestState get googleRequestState => _googleRequestState;

  RequestState _githubRequestState = const RequestState.idle();
  RequestState get githubRequestState => _githubRequestState;

  EdenUser? _edenUser;
  EdenUser? get edenUser => _edenUser;

  bool get isLoading =>
      googleRequestState == const RequestState.loading() ||
      githubRequestState == const RequestState.loading();

  Future<void> getEdenUser() async {
    try {
      _edenUser = await _storageService.getEdenUser();
    } catch (err) {
      debugPrint("Something went wrong");
    }
  }

  Future<void> loginWithGoogle() async {
    _googleRequestState = const RequestState.loading();

    notifyListeners();

    try {
      _edenUser = await _loginRepository.signInWithGoogle();

      _storageService.cacheEdenUser(_edenUser);

      _googleRequestState = const RequestState.success();
    } on Failure catch (err) {
      _googleRequestState = RequestState.error(message: err.message);
    } finally {
      notifyListeners();
    }
  }

  Future<void> loginWithGitHub() async {
    try {
      _githubRequestState = const RequestState.loading();

      _edenUser = await _loginRepository.signInWithGitHub();

      _githubRequestState = const RequestState.success();
    } on Failure catch (err) {
      _githubRequestState = RequestState.error(message: err.message);
    } finally {
      notifyListeners();
    }
  }
}
