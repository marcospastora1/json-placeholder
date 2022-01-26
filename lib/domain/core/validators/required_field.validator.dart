import 'package:ekko/domain/core/abstractions/validators/field_validator.interface.dart';

class RequiredFieldValidator implements IFieldValidator {
  @override
  final String field;

  RequiredFieldValidator(this.field);

  @override
  String? validate(String? value) {
    return value?.isEmpty ?? true ? 'Campo obrigatório' : null;
  }
}
