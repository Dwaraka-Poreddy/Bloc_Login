import 'package:formz/formz.dart';

enum UserNameValidationError { empty }

class Username extends FormzInput<String, UserNameValidationError> {
  const Username.pure() : super.pure(' ');
  const Username.dirty([String value = '']) : super.dirty(value);

  @override
  UserNameValidationError? validator(String value) {
    if (value.isEmpty) return UserNameValidationError.empty;
    return null;
  }
}
