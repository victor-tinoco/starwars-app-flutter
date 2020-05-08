import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/page/forgot_password/widgets/red_line.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/forgot_password/forgot_password_viewmodel.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';

class ForgotPasswordSecondStep extends StatelessWidget {
  final ForgotPasswordViewModel viewModel;

  const ForgotPasswordSecondStep({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        height: 350,
        padding: EdgeInsets.symmetric(horizontal: 52),
        child: Column(
          children: <Widget>[
            RedLine(),
            SizedBox(height: 42),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '$FORGOT_PASSWORD_EXPLANATION_2',
                children: [
                  TextSpan(
                    text: viewModel.maskEmail(viewModel.email),
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: grey255),
                  )
                ],
                style: TextStyle(
                  color: grey177,
                  fontFamily: FONT_SF_DISPLAY_PRO,
                  letterSpacing: LETTER_SPACING_21,
                  fontSize: SMALL_FONT_SIZE,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 12),
            LoginModuleTextField(
              textFieldLayoutState: TextFieldLayoutState.normal,
              textFieldLayout: TextFieldLayout.greyOutline,
              hintText: FORGOT_PASSWORD_RESETCODE_TEXTFIELD_HINT_TEXT,
              onChange: (value) => viewModel.setResetCode(value),
            ),
            SizedBox(height: 27),
            GestureDetector(
                child: Text(
                  FORGOT_PASSWORD_RESET_CODE_GESTURE_TEXT,
                  style: TextStyle(
                    color: greenGestureResetCode,
                    fontFamily: FONT_SF_DISPLAY_PRO,
                    fontWeight: FontWeight.w500,
                    letterSpacing: LETTER_SPACING_33,
                    fontSize: SMALL_FONT_SIZE,
                  ),
                ),
                onTap: () {})
          ],
        ),
      );
    });
  }
}
