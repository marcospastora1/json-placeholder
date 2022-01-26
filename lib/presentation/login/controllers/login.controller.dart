import 'package:ekko/domain/core/abstractions/controllers/login/login_controller.interfacel.dart';
import 'package:ekko/domain/core/abstractions/repositories/auth_repository.interface.dart';
import 'package:ekko/domain/core/exceptions/user_not_found.exception.dart';
import 'package:ekko/domain/core/utils/snackbar.util.dart';
import 'package:ekko/domain/core/validators/validator_composite.dart';
import 'package:ekko/infrastructure/dal/inject.dart';
import 'package:ekko/infrastructure/navigation/routes.dart';
import 'package:ekko/presentation/shared/loading/loading.controller.dart';
import 'package:get/get.dart';

class LoginController extends GetxController implements ILoginController {
  final IAuthRepository _authRepository;
  final ValidatorComposite _validator;
  final _loadingController = Inject.find<LoadingController>();

  LoginController({
    required IAuthRepository authRepository,
    required ValidatorComposite validator,
  })  : _authRepository = authRepository,
        _validator = validator;

  var _login = '';
  final _loginError = Rxn<String>();

  var _password = '';
  final _passwordError = Rxn<String>();

  final _enableButton = false.obs;

  @override
  Stream<String?> get loginErrorStream => _loginError.stream;

  @override
  Stream<String?> get passwordErrorStream => _passwordError.stream;

  @override
  Stream<bool> get enableButtonStream => _enableButton.stream;

  @override
  Future<void> doLogin() async {
    try {
      _loadingController.isLoading = true;
      Get.focusScope?.unfocus();
      if (enableButton()) {
        await _authRepository.authenticateUser(
          login: _login,
          password: _password,
        );

        Get.offAllNamed(Routes.home);
      }
    } on UserOrPasswordWrongException catch (err) {
      SnackbarUtil.showWarning(message: err.toString());
      rethrow;
    } catch (err) {
      SnackbarUtil.showError(message: err.toString());
      rethrow;
    } finally {
      _loadingController.isLoading = false;
    }
  }

  @override
  void validateLogin(String val) {
    _login = val;
    _loginError.value = _validator.validate(field: 'login', value: val);
    enableButton();
  }

  @override
  void validatePassword(String val) {
    _password = val;
    _passwordError.value = _validator.validate(field: 'password', value: val);
    enableButton();
  }

  bool enableButton() {
    return _enableButton.value = _loginError.value == null &&
        _login.isNotEmpty &&
        _passwordError.value == null &&
        _password.isNotEmpty;
  }
}
