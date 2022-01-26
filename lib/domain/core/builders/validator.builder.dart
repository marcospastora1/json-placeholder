import 'package:ekko/domain/core/abstractions/validators/field_validator.interface.dart';
import 'package:ekko/domain/core/validators/password.validator.dart';
import 'package:ekko/domain/core/validators/required_field.validator.dart';

class ValidatorBuilder {
  static late ValidatorBuilder _instance;
  late String _fieldName;
  final List<IFieldValidator> _validators = [];

  ValidatorBuilder._();

  static ValidatorBuilder field(String fieldName) {
    _instance = ValidatorBuilder._();
    _instance._fieldName = fieldName;
    return _instance;
  }

  ValidatorBuilder required() {
    _validators.add(RequiredFieldValidator(_fieldName));
    return this;
  }

  ValidatorBuilder password() {
    _validators.add(PasswordFieldValidator(_fieldName));
    return this;
  }

  List<IFieldValidator> build() => _validators;
}
