import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/page/login/widgets/forgot_password_login.dart';
import 'package:flutter_starwars/app/presentation/page/login/widgets/register_container_login.dart';
import 'package:flutter_starwars/app/presentation/page/login/widgets/rounded_login_button.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/login/login_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/widget/error_box.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginViewModel _viewModel = serviceLocator<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(LOGIN_BACKGROUND_PATH),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          gradientLoginBackground1,
                          gradientLoginBackground2,
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Observer(builder: (_) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Spacer(flex: 1),
                              Image.asset(LOGIN_LOGO_PATH),
                              ErrorBox(
                                errorText: _viewModel.errorMessage,
                                boxOpacity: _viewModel.boxError,
                              ),
                              Spacer(flex: 1),
                              Padding(
                                padding: loginTextFieldsPadding,
                                child: new LoginModuleTextField(
                                  hintText: LOGIN_EMAIL_TEXTFIELD_HINT_TEXT,
                                  labelText: LOGIN_EMAIL_TEXTFIELD_HINT_TEXT,
                                  textFieldLayout: TextFieldLayout.fill,
                                  textFieldLayoutState:
                                      _viewModel.hasErrorOnEmail
                                          ? TextFieldLayoutState.error
                                          : TextFieldLayoutState.normal,
                                  validation: _viewModel.validateEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  onChange: (value) =>
                                      _viewModel.setEmail(value),
                                ),
                              ),
                              Padding(
                                padding: loginTextFieldsPadding,
                                child: new LoginModuleTextField(
                                  hintText: LOGIN_PASSWORD_TEXTFIELD_HINT_TEXT,
                                  labelText: LOGIN_PASSWORD_TEXTFIELD_HINT_TEXT,
                                  textFieldLayout: TextFieldLayout.fill,
                                  textFieldLayoutState:
                                      _viewModel.hasErrorOnPassword
                                          ? TextFieldLayoutState.error
                                          : TextFieldLayoutState.normal,
                                  validation: _viewModel.validatePassword,
                                  onChange: (value) =>
                                      _viewModel.setPassword(value),
                                  isPasswordField: true,
                                  isToggleObscureText: true,
                                ),
                              ),
                              ForgotPasswordButton(),
                              Spacer(flex: 3),
                              RoundedLoginButton(),
                              SizedBox(height: 12),
                              Spacer(flex: 1),
                              RegisterContainer()
                            ]);
                      }),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
