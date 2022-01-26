import 'package:ekko/domain/core/abstractions/controllers/login/login_controller.interfacel.dart';
import 'package:ekko/infrastructure/dal/inject.dart';
import 'package:flutter/material.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  ILoginController get controller => Inject.find<ILoginController>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: controller.passwordErrorStream,
      builder: (_, snapshot) {
        return TextFormField(
          onChanged: controller.validatePassword,
          textAlign: TextAlign.center,
          obscureText: true,
          textInputAction: TextInputAction.done,
          onFieldSubmitted: (_) => controller.doLogin(),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            errorText: snapshot.hasData ? snapshot.data : null,
            hintText: 'Password',
          ),
        );
      },
    );
  }
}
