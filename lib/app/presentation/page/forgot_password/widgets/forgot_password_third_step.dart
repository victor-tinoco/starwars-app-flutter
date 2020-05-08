import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/forgot_password/forgot_password_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class ForgotPasswordThirdStep extends StatelessWidget {
  final ForgotPasswordViewModel viewModel;

  const ForgotPasswordThirdStep({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        height: 350,
        padding: EdgeInsets.symmetric(horizontal: 52),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            LoginModuleTextField(
              textFieldLayoutState: TextFieldLayoutState.normal,
              textFieldLayout: TextFieldLayout.greyOutline,
              hintText: FORGOT_PASSWORD_PASSWORD_TEXTFIELD_HINT_TEXT,
              isPasswordField: true,
              isToggleObscureText: true,
              onChange: (value) => viewModel.setPassword(value),
            ),
            SizedBox(height: 27),
            LoginModuleTextField(
              textFieldLayoutState: viewModel.passwordsAreEqual == null
                  ? TextFieldLayoutState.normal
                  : viewModel.passwordsAreEqual
                      ? TextFieldLayoutState.acceptAquaGreenWithIcon
                      : TextFieldLayoutState.errorWithIcon,
              textFieldLayout: TextFieldLayout.greyOutline,
              hintText: FORGOT_PASSWORD_CONFIRM_PASSWORD_TEXTFIELD_HINT_TEXT,
              isPasswordField: true,
              onChange: (value) => viewModel.setConfirmPassword(value),
            ),
          ],
        ),
      );
    });
  }
}
