import 'package:ekko/infrastructure/dal/services/auth/dto/authenticate_user.body.dart';
import 'package:ekko/infrastructure/dal/services/auth/dto/authenticate_user.response.dart';

abstract class IAuthService {
  Future<AuthenticateUserResponse> authenticateUser(AuthenticateUserBody body);
}
