import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/signup/signup_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/widget/error_box.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class SignUpSecondStep extends StatelessWidget {
  final SignUpViewModel viewModel;

  const SignUpSecondStep({Key key, this.viewModel}) : super(key: key);

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
              hintText: SIGNUP_PASSWORD_TEXTFIELD_HINT_TEXT,
              isPasswordField: true,
              isToggleObscureText: true,
              onChange: (value) => viewModel.setPassword(value),
              validation: (value) => viewModel.validatePassword(value),
            ),
            SizedBox(height: 26),
            LoginModuleTextField(
              textFieldLayoutState: viewModel.passwordsAreEqual == null
                  ? TextFieldLayoutState.normal
                  : viewModel.passwordsAreEqual
                      ? TextFieldLayoutState.acceptGreenWithIcon
                      : TextFieldLayoutState.errorWithIcon,
              textFieldLayout: TextFieldLayout.greyOutline,
              hintText: SIGNUP_CONFIRM_PASSWORD_TEXTFIELD_HINT_TEXT,
              isPasswordField: true,
              onChange: (value) => viewModel.setConfirmPassword(value),
            ),
            SizedBox(height: 26),
            Container(
              alignment: Alignment.center,
              child: ErrorBox(
                boxOpacity: viewModel.hasErrorOnSecondStep ? 1 : 0,
                errorText: viewModel.errorMessage,
              ),
            )
          ],
        ),
      );
    });
  }
}
