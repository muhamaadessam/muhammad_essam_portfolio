import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomDropDownFormField extends StatefulWidget {
  const CustomDropDownFormField({
    super.key,
    this.label,
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.color = const Color(0xffcdcdcd),
    this.focusedBorderColor = mainColor,
    this.fillColor,
    this.borderRadius,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.onTap,
    this.prefixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.labelFontSize = 12,
    this.hintText,
    this.helperText,
    this.hintFontSize = 12,
    this.isDense = true,
    this.showErrorMessage = true,
    this.onSaved,
    required this.items,
    this.value,
  });

  final List<DropdownMenuItem<Object?>> items;
  final void Function(Object?)? onChanged;
  final Object? value;
  final String? label;
  final String? hintText;
  final String? helperText;
  final double labelFontSize;
  final double hintFontSize;
  final String? Function(Object?)? validator;
  final void Function(Object?)? onSaved;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? color;
  final Color? fillColor;
  final Color? focusedBorderColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? onTap;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final bool isDense;
  final bool showErrorMessage;

  @override
  State<CustomDropDownFormField> createState() =>
      _CustomDropDownFormFieldState();
}

class _CustomDropDownFormFieldState extends State<CustomDropDownFormField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _isHasValue = false;
  bool _isHasFocus = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      widget.value == null ? _isHasValue = false : _isHasValue = true;
    });
    _focusNode.addListener(() {
      setState(() {
        _isHasFocus = _focusNode.hasFocus;
        _isFocused = _isHasFocus || _isHasValue;
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
    return DropdownButtonFormField<Object?>(
      value: widget.value,
      onTap: widget.onTap,
      iconEnabledColor: mainColor,
      iconDisabledColor: Colors.grey,
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
        prefixIconColor: _isFocused ? mainColor : widget.color,
        prefixIconConstraints: widget.prefixIconConstraints,
        suffixIconConstraints: widget.suffixIconConstraints,
      ),
      onSaved: widget.onSaved,
      validator: widget.validator,
      focusNode: _focusNode,
      items: widget.items,
      onChanged: widget.onChanged,
    );
  }
}
