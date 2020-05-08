import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/fonts.dart';

enum TextFieldLayoutState {
  normal,
  error,
  errorWithIcon,
  acceptGreenWithIcon,
  acceptAquaGreenWithIcon
}

enum TextFieldLayout { fill, greyOutline }

class LoginModuleTextField extends StatefulWidget {
  final bool isPasswordField;
  final bool isToggleObscureText;
  final String hintText;
  final String labelText;
  final TextFieldLayoutState textFieldLayoutState;
  final TextFieldLayout textFieldLayout;
  final Function(String text) validation;
  final Function(dynamic) onChange;
  final TextInputType keyboardType;

  const LoginModuleTextField({
    Key key,
    this.isPasswordField = false,
    this.isToggleObscureText = false,
    this.hintText = '',
    this.labelText = '',
    @required this.textFieldLayoutState,
    @required this.textFieldLayout,
    this.validation,
    this.onChange,
    this.keyboardType,
  }) : super(key: key);

  @override
  _LoginModuleTextField createState() => _LoginModuleTextField();
}

class _LoginModuleTextField extends State<LoginModuleTextField> {
  bool isObscureText;
  double labelOpacity = 0; // should be from 0.0 to 1.0

  _LoginModuleTextField();

  @override
  void initState() {
    super.initState();
    isObscureText = widget.isPasswordField;
  }

  void togglePasswordVisible() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  void setLabelOpacity(double opacity) {
    setState(() {
      labelOpacity = opacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder borderStyle;
    Color labelColor;
    Widget icon;

    switch (widget.textFieldLayoutState) {
      case TextFieldLayoutState.normal:
        labelColor =
            widget.textFieldLayout == TextFieldLayout.fill ? grey227 : grey157;
        borderStyle = OutlineInputBorder(
          borderSide: BorderSide(
              color: widget.textFieldLayout == TextFieldLayout.fill
                  ? grey31
                  : grey112),
          borderRadius: BorderRadius.all(Radius.circular(11)),
        );
        break;
      case TextFieldLayoutState.error:
        labelColor = errorRed;
        borderStyle = OutlineInputBorder(
          borderSide: BorderSide(color: errorRed),
          borderRadius: BorderRadius.all(Radius.circular(11)),
        );
        break;
      case TextFieldLayoutState.errorWithIcon:
        labelColor = errorRed;
        borderStyle = OutlineInputBorder(
          borderSide: BorderSide(color: errorRed),
          borderRadius: BorderRadius.all(Radius.circular(11)),
        );
        icon = Image.asset(IC_FIELD_ERROR_PATH);
        break;
      case TextFieldLayoutState.acceptGreenWithIcon:
        labelColor = successGreen;
        borderStyle = OutlineInputBorder(
          borderSide: BorderSide(color: successGreen),
          borderRadius: BorderRadius.all(Radius.circular(11)),
        );
        icon = Image.asset(IC_FIELD_GREEN_CORRECT_PATH);
        break;
      case TextFieldLayoutState.acceptAquaGreenWithIcon:
        labelColor = successAquaGreen;
        borderStyle = OutlineInputBorder(
          borderSide: BorderSide(color: successAquaGreen),
          borderRadius: BorderRadius.all(Radius.circular(11)),
        );
        icon = Image.asset(IC_FIELD_AQUAGREEN_CORRECT_PATH);
        break;
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 16,
          bottom: 1,
        ),
        child: Opacity(
          opacity: labelOpacity,
          child: Text(
            widget.labelText,
            style: TextStyle(
                color: labelColor,
                fontFamily: FONT_SF_DISPLAY_PRO,
                letterSpacing: .13,
                fontSize: 11),
          ),
        ),
      ),
      TextField(
        keyboardType: widget.keyboardType,
        onChanged: (value) {
          if (widget.onChange != null) widget.onChange(value);
          if (value.length > 0)
            setLabelOpacity(1);
          else {
            setLabelOpacity(0);
            if (widget.validation != null) widget.validation(value);
            // to know that field has been reset
          }
        },
        onSubmitted: (value) {
          if (widget.validation != null) widget.validation(value);
        },
        obscureText: isObscureText ? true : false,
        cursorColor: grey227,
        style: TextStyle(
            color: grey235,
            fontFamily: FONT_SF_DISPLAY_PRO,
            letterSpacing: .18,
            fontSize: 15),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: grey117),
          fillColor: widget.textFieldLayout == TextFieldLayout.fill
              ? grey31
              : widget.textFieldLayout == TextFieldLayout.greyOutline
                  ? grey23
                  : null,
          filled: true,
          enabledBorder: borderStyle,
          focusedBorder: borderStyle,
          suffixIcon: widget.isToggleObscureText
              ? IconButton(
                  icon: isObscureText
                      ? Image.asset(IC_VISIBILITY_PATH)
                      : Icon(Icons.visibility_off, color: grey117),
                  onPressed: togglePasswordVisible,
                )
              : icon,
        ),
      ),
    ]);
  }
}
