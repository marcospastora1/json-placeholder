import 'package:ekko/domain/core/abstractions/controllers/login/login_controller.interfacel.dart';
import 'package:ekko/infrastructure/dal/inject.dart';
import 'package:flutter/material.dart';

class LoginTextFieldWidget extends StatelessWidget {
  ILoginController get controller => Inject.find<ILoginController>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: controller.loginErrorStream,
      builder: (_, snapshot) {
        return TextFormField(
          onChanged: controller.validateLogin,
          textAlign: TextAlign.center,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            errorText: snapshot.hasData ? snapshot.data as String : null,
            hintText: 'Login',
          ),
        );
      },
    );
  }
}
