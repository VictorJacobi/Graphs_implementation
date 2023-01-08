import 'package:graph_implementation/custom_widgets/custom_text.dart';
import 'package:graph_implementation/custom_widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.hintStyle,
    this.newHintText,
    this.suffixIcon,
    this.height,
    this.enabled = true,
    this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.hintText,
    this.error = false,
    this.borderColor,
    this.labelText,
    this.isEnabledColor = true,
    this.maxline,
    this.contentPadding,
    this.obscureText,
    this.ispassword = false,
    this.validator,
    this.onchanged,
    this.errorText,
    this.suffixText,
    this.onTap,
    this.textCapitalization,
    this.autofillHints,
    this.textStyle
  }) : super(key: key);
  final void Function()? onTap;
  final bool? enabled;
  final Iterable<String>? autofillHints;
  final String? Function(String?)? validator;
  final String? errorText;
  final String? suffixText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final String? newHintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final Color? borderColor;
  final bool? error;
  final TextInputType? keyboardType;
  final bool? isEnabledColor;
  final bool? obscureText;
  final bool ispassword;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final int? maxline;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String value)? onchanged;
  final double? height;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode focusNode = FocusNode();
  bool isFocused = false;

  void onFocusChange() {
    setState(() {
      isFocused = focusNode.hasFocus ? true : false;
    });
  }

  @override
  void initState() {
    focusNode.addListener(onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    focusNode.removeListener(onFocusChange);
    super.dispose();
  }

  bool showpassword = true;
  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    InputBorder _inputBorder = OutlineInputBorder(
      gapPadding: 8,
      borderSide: const BorderSide(
        color: Color(0xFF98A2B3),
      ),
      borderRadius: BorderRadius.circular(8),
    );
    return SizedBox(
      height: widget.error == true ? 70 : widget.height??44,
      child: TextFormField(
        style: widget.textStyle??kHeading1Style,
        textAlign: TextAlign.center,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.sentences,
        keyboardType: widget.keyboardType,
        onTap: widget.onTap,
        onFieldSubmitted: (value) {
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        onEditingComplete: () => TextInput.finishAutofillContext(),
        autofillHints: widget.autofillHints,
        validator: widget.validator,
        controller: widget.controller,
        focusNode: focusNode,
        maxLines: widget.maxline ?? 1,
        obscureText: widget.obscureText ?? false,
        enabled: widget.enabled,
        onChanged: widget.onchanged ?? (value) {},
        decoration: InputDecoration(
          hintStyle: widget.hintStyle ??
              kHeading1Style.copyWith(
                fontWeight: FontWeight.w400,
              ),
          alignLabelWithHint: true,
          prefixIcon: widget.prefixIcon,
          // disabledBorder: _inputBorder.copyWith(
          //   borderSide:  BorderSide(
          //     color: widget.borderColor??kDesignColor,
          //   ),
          // ),

          suffixStyle: kHeading1Style.copyWith(color: Colors.grey),
          helperStyle: kHeading1Style,
          contentPadding: const EdgeInsets.all(0),
          errorText: widget.errorText,
          errorStyle: const TextStyle(
            color: kFieldErrorColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          // errorText: widget.errorText,
          label: widget.labelText!=null?Center(
            // padding: const EdgeInsets.only(bottom: 16.0,left: 16),
            child: Text(
                widget.labelText??'',
              style: kHeading1Style.copyWith(fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ):null,
          hintText: widget.newHintText,
          // labelStyle: kHeading1Style.copyWith(fontSize: 16,height: 2),
          suffixIcon: widget.suffixIcon ?? const SizedBox.shrink(),
          suffixText: widget.suffixText,
          // enabledBorder: _inputBorder,
          filled: true,
          fillColor: const Color(0xFFF2F7FA),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            gapPadding: 8,
            borderRadius: BorderRadius.circular(15),
          ),
          // border: InputBorder.none,
          // errorBorder: widget.error == true
          //     ? _inputBorder.copyWith(
          //     borderSide: const BorderSide(
          //       color: kFieldErrorColor,
          //     ))
          //     : _inputBorder,
          // focusedBorder: OutlineInputBorder(
          //
          //   gapPadding: 8,
          //   borderSide: const BorderSide(
          //     color: kDesignColor,
          //   ),
          //   borderRadius: BorderRadius.circular(8),
          // ),
        ),
      ),
    );
  }
}
