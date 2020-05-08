import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/page/forgot_password/widgets/red_line.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/forgot_password/forgot_password_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class ForgotPasswordFirstStep extends StatelessWidget {
  final ForgotPasswordViewModel viewModel;

  const ForgotPasswordFirstStep({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        height: 350,
        padding: paddingHorizontal52,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RedLine(),
            SizedBox(height: 42),
            Text(
              FORGOT_PASSWORD_EXPLANATION_1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: grey177,
                fontFamily: FONT_SF_DISPLAY_PRO,
                letterSpacing: LETTER_SPACING_21,
                fontSize: MAIN_FONT_SIZE,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12),
            LoginModuleTextField(
              textFieldLayoutState: TextFieldLayoutState.normal,
              textFieldLayout: TextFieldLayout.greyOutline,
              keyboardType: TextInputType.emailAddress,
              hintText: FORGOT_PASSWORD_EMAIL_TEXTFIELD_HINT_TEXT,
              onChange: (value) => viewModel.setEmail(value),
            ),
          ],
        ),
      );
    });
  }
}
