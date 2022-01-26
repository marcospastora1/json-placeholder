import 'package:ekko/domain/core/abstractions/services/auth_service.interface.dart';
import 'package:ekko/domain/core/exceptions/user_not_found.exception.dart';
import 'package:ekko/infrastructure/dal/services/auth/dto/authenticate_user.response.dart';
import 'package:ekko/infrastructure/dal/services/auth/dto/authenticate_user.body.dart';
import 'package:ekko/infrastructure/dal/services/data/user.data.dart';

class AuthServiceMock implements IAuthService {
  @override
  Future<AuthenticateUserResponse> authenticateUser(
    AuthenticateUserBody body,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    if (body.login.toLowerCase() == 'admin' && body.password == '123456') {
      return Future.value(
        AuthenticateUserResponse(
          success: true,
          error: null,
          data: AuthenticateUserDataResponse(
            token: 'jwtToken',
            user: UserData(
              id: 1,
              name: 'Katekko',
              email: 'contact@gyanburuworld.com',
            ),
          ),
        ),
      );
    } else {
      throw UserOrPasswordWrongException();
    }
  }
}
