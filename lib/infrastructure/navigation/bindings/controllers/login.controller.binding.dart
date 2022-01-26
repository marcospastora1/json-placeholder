import 'package:ekko/domain/core/abstractions/controllers/login/login_controller.interfacel.dart';
import 'package:ekko/domain/core/builders/validator.builder.dart';
import 'package:ekko/domain/core/validators/validator_composite.dart';
import 'package:ekko/infrastructure/dal/inject.dart';
import 'package:ekko/infrastructure/navigation/bindings/domains/auth.repository.binding.dart';
import 'package:ekko/presentation/login/controllers/login.controller.dart';
import 'package:get/get.dart';

class LoginControllerBinding extends Bindings {
  @override
  void dependencies() {
    final authRepositoryBinding = AuthRepositoryBinding();
    final validatorComposite = ValidatorComposite(
      validators: [
        ...ValidatorBuilder.field('login').required().build(),
        ...ValidatorBuilder.field('password').required().password().build(),
      ],
    );

    Inject.put<ILoginController>(
      () => LoginController(
        authRepository: authRepositoryBinding.repository,
        validator: validatorComposite,
      ),
    );
  }
}
