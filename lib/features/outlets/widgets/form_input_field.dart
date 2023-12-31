import 'package:flutter/material.dart';

import 'package:nettapp/core/app_colors/app_colors.dart';
import 'package:nettapp/core/widgets/text_widget.dart';

class FormInputFieldWidget extends StatelessWidget {
  const FormInputFieldWidget(
      {super.key,
      required this.label,
      this.initialValue,
      required this.hintText,
      this.hintSize = 14,
      required this.onChanged,
      this.validator,
      required this.textFieldkey,
      this.obscureText = false,
      this.suffixIcon,
      this.prefixicon,
      required this.isMandatory,
      this.maxLines = 1,
      this.verticalContentPadding = 0});
  final String label;
  final String hintText;
  final double hintSize;
  final double? verticalContentPadding;
  final void Function(String?) onChanged;
  final String? Function(String?)? validator;
  final GlobalKey<FormFieldState> textFieldkey;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixicon;
  final String? initialValue;
  final int maxLines;
  final bool isMandatory;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 25, top: 40),
      child: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                TextWidget(
                  text: label,
                  color: const Color.fromARGB(255, 110, 111, 117),
                  fontSize: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextWidget(
                    text: isMandatory ? "*" : "",
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          TextFormField(
            key: textFieldkey,
            initialValue: initialValue,
            onChanged: onChanged,
            validator: validator,
            obscureText: obscureText,
            maxLines: maxLines,
            decoration: InputDecoration(
              prefixIcon: prefixicon,
              suffixIcon: suffixIcon,
              hintStyle:
                  TextStyle(color: AppColors.hintColor, fontSize: hintSize),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: verticalContentPadding!),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.textGrey,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.inputBorder,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: hintText,
            ),
          ),
        ]),
      ),
    );
  }
}
