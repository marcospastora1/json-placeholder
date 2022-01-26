import 'package:ekko/domain/core/abstractions/controllers/login/login_controller.interfacel.dart';
import 'package:ekko/infrastructure/dal/inject.dart';
import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  ILoginController get controller => Inject.find<ILoginController>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: controller.enableButtonStream,
      builder: (_, snapshot) {
        return ElevatedButton(
          onPressed: snapshot.hasData
              ? snapshot.data!
                  ? controller.doLogin
                  : null
              : null,
          child: const SizedBox(
            height: 60,
            width: double.infinity,
            child: Center(
              child: Text(
                'ENTER',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        );
      },
    );
  }
}
