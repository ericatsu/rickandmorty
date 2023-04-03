import 'package:fluttergraphql/shared/exports.dart';

class ElevatedTextFormField extends StatelessWidget {
  const ElevatedTextFormField({
    Key? key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.validator,
    focusNode,
  }) : super(key: key);

  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: Colors.transparent,
      borderOnForeground: false,
      borderRadius: BorderRadius.circular(28),
      shadowColor: const Color.fromARGB(255, 252, 251, 251),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.teal,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 236, 236),
          filled: true,
          labelText: label,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: const BorderSide(color: Colors.grey)),
        ),
        validator: validator, 
      ),
    );
  }
}
