import 'package:ekko/domain/core/abstractions/validators/field_validator.interface.dart';

class PasswordFieldValidator implements IFieldValidator {
  @override
  final String field;
  PasswordFieldValidator(this.field);

  @override
  String? validate(String? value) {
    String? error;

    if (value != null) {
      if (value.length <= 3) {
        error = 'Senha muito pequena';
      }
    }

    return error;
  }
}
