import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.label,
    required this.controller,
    this.validator,
    this.onChanged,
    this.isPassword = false,
    this.suffixIcon,
    this.color = const Color(0xffcdcdcd),
    this.cursorColor = mainColor,
    this.focusedBorderColor = mainColor,
    this.fillColor,
    this.borderRadius,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.keyboardType,
    this.onTap,
    this.prefixIcon,
    this.textAlign = TextAlign.start,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.readOnly = false,
    this.labelFontSize = 12,
    this.hintText,
    this.helperText,
    this.hintFontSize = 12,
    this.isDense = true,
    this.showErrorMessage = true,
    this.onSaved,
    this.maxLines = 1,
    this.prefix,
  });

  final String? label;
  final String? hintText;
  final String? helperText;
  final double labelFontSize;
  final double hintFontSize;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool? isPassword;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Color? color;
  final Color? cursorColor;
  final Color? fillColor;
  final Color? focusedBorderColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final TextAlign textAlign;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final bool readOnly;
  final bool isDense;
  final bool showErrorMessage;
  final int? maxLines;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _hasText = false;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        debugPrint('tettt ${widget.controller.text.isNotEmpty}');
        _hasText = widget.controller.text.isNotEmpty;
        _isFocused = _hasFocus || _hasText;
      });
    });
    _focusNode.addListener(() {
      setState(() {
        debugPrint('tetttx ${_focusNode.hasFocus}');
        _hasFocus = _focusNode.hasFocus;
        _isFocused = _hasFocus || _hasText;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InputBorder border({Color? color}) => OutlineInputBorder(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(5),
          borderSide: BorderSide(color: color!),
        );
    TextStyle textStyle({required double fontSize, Color? color}) => TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
          fontFamily: 'Almarai',
          color: color,
        );
    return TextFormField(
      maxLines: widget.maxLines,
      textAlign: widget.textAlign,
      cursorColor: widget.cursorColor,
      cursorRadius: const Radius.circular(10),
      cursorWidth: 1,
      cursorOpacityAnimates: true,
      keyboardType: widget.keyboardType,
      onTap: widget.onTap,
      readOnly: widget.readOnly,
      style: textStyle(fontSize: 14),
      decoration: InputDecoration(
        errorStyle: textStyle(
            fontSize: widget.showErrorMessage ? widget.hintFontSize : 0),
        isDense: widget.isDense,
        hintText: widget.hintText,
        helperText: widget.helperText,
        hintStyle: textStyle(
            fontSize: widget.hintFontSize, color: const Color(0xffd8d8d8)),
        filled: widget.fillColor != null ? true : false,
        fillColor: widget.fillColor,
        contentPadding: widget.contentPadding,
        labelText: widget.label,
        labelStyle: textStyle(
            fontSize: widget.labelFontSize, color: const Color(0xffd8d8d8)),
        helperStyle: textStyle(
            fontSize: widget.labelFontSize, color: const Color(0xffd8d8d8)),
        floatingLabelStyle:
            textStyle(fontSize: widget.labelFontSize + 2, color: widget.color),
        border: border(color: _isFocused ? mainColor : widget.color),
        enabledBorder: border(color: _isFocused ? mainColor : widget.color),
        focusedBorder: border(color: widget.focusedBorderColor),
        errorBorder: border(color: Colors.red),
        suffixIconColor: widget.color,
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        prefix: widget.prefix,
        prefixIconColor: _isFocused ? mainColor : widget.color,
        prefixIconConstraints: widget.prefixIconConstraints,
        suffixIconConstraints: widget.suffixIconConstraints,
      ),
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword!,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      focusNode: _focusNode,
    );
  }
}
