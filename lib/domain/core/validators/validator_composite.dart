import 'package:ekko/domain/core/abstractions/validators/field_validator.interface.dart';
import 'package:ekko/domain/core/abstractions/validators/validator.interface.dart';

class ValidatorComposite implements IValidator {
  final List<IFieldValidator> _validators;
  ValidatorComposite({required List<IFieldValidator> validators})
      : _validators = validators;

  @override
  String? validate({required String field, required String value}) {
    String? error;
    for (final validator in _validators.where((v) => v.field == field)) {
      error = validator.validate(value);
      if (error != null) return error;
    }

    return error;
  }
}
