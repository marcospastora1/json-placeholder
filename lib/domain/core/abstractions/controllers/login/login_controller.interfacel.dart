abstract class ILoginController {
  Future<void> doLogin();

  Stream<String?> get loginErrorStream;
  void validateLogin(String val);

  Stream<String?> get passwordErrorStream;
  void validatePassword(String val);

  Stream<bool> get enableButtonStream;
}
