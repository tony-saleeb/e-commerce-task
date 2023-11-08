import 'package:flutter/material.dart';
import 'package:ecommerce/core/theme/application_theme.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final int maxLines;
  final Widget? label;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Color? borderColor;

  CustomTextFormField({
    Key? key,
    required this.controller,
    this.validator,
    this.hintText,
    required this.maxLines,
    this.label,
    this.suffixIcon,
    this.borderColor,
    this.obscureText = false,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultTextStyle(
                style: ApplicationTheme.customLabelStyle,
                child: widget.label!,
              ),
            ],
          ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.borderColor ?? Color(0xffB2C7DA),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
            controller: widget.controller,
            validator: widget.validator,
            maxLines: widget.maxLines,
            obscureText: widget.obscureText!,
            decoration: InputDecoration(
              suffixIconColor: theme.primaryColor,
              suffixIcon: widget.suffixIcon,
              labelText: null,
              hintText: widget.hintText,
              contentPadding: EdgeInsets.all(15),
              border: InputBorder.none, // Remove the default border
            ),
          ),
        ),
      ],
    );
  }
}
