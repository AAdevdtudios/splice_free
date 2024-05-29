import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obSecure;
  final IconData iconData;
  final bool isRequired;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CustomInputField({
    super.key,
    required this.label,
    required this.hint,
    required this.obSecure,
    required this.iconData,
    required this.controller,
    this.validator,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevarmInputFieldLabel(
          label: label,
          isRequired: isRequired,
        ),
        TextFormField(
          validator: validator,
          controller: controller,
          obscureText: obSecure,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
            suffixIcon: Icon(iconData),
            hintText: hint,
          ),
        ),
      ],
    );
  }
}
