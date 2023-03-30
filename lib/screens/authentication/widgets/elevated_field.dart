import 'package:fluttergraphql/shared/exports.dart';

class ElevatedTextFormField extends StatelessWidget {
  const ElevatedTextFormField({
    Key? key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.validator,
  }) : super(key: key);

  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          const BoxShadow(
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 236, 236),
          filled: true,
          labelText: label,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(style: BorderStyle.solid, color: Colors.grey)
          ),
        ),
        validator: validator,
      ),
    );
  }
}
