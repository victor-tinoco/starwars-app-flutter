import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/signup/signup_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class SignUpFirstStep extends StatelessWidget {
  final SignUpViewModel viewModel;

  const SignUpFirstStep({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        padding: paddingHorizontal52,
        height: 255,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LoginModuleTextField(
              textFieldLayoutState: TextFieldLayoutState.normal,
              textFieldLayout: TextFieldLayout.greyOutline,
              hintText: SIGNUP_NAME_TEXTFIELD_HINT_TEXT,
              labelText: SIGNUP_NAME_TEXTFIELD_HINT_TEXT,
              onChange: (value) => viewModel.setName(value),
            ),
            SizedBox(height: 26),
            LoginModuleTextField(
              textFieldLayoutState: TextFieldLayoutState.normal,
              textFieldLayout: TextFieldLayout.greyOutline,
              hintText: SIGNUP_BIRTH_TEXTFIELD_HINT_TEXT,
              keyboardType: TextInputType.datetime,
              labelText: SIGNUP_BIRTH_TEXTFIELD_HINT_TEXT,
              onChange: (value) => viewModel.setBirth(value),
            ),
            SizedBox(height: 26),
            LoginModuleTextField(
              textFieldLayoutState: viewModel.emailAlredyExists
                  ? TextFieldLayoutState.errorWithIcon
                  : TextFieldLayoutState.normal,
              textFieldLayout: TextFieldLayout.greyOutline,
              keyboardType: TextInputType.emailAddress,
              hintText: SIGNUP_EMAIL_TEXTFIELD_HINT_TEXT,
              labelText: SIGNUP_EMAIL_TEXTFIELD_HINT_TEXT,
              onChange: (value) => viewModel.setEmail(value),
              validation: (String value) =>
                  value.isEmpty ? viewModel.setEmailAlreadyExists(false) : null,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 4,
              ),
              child: Opacity(
                opacity: viewModel.emailAlredyExists ? 1 : 0,
                child: Text(
                  ERROR_EMAIL_ALREADY_EXISTS,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: errorRed,
                    fontFamily: FONT_SF_DISPLAY_PRO,
                    letterSpacing: LETTER_SPACING_13,
                    fontSize: SMALL_FONT_SIZE,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
