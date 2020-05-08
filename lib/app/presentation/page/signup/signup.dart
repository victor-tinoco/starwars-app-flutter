import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/page/signup/widgets/signup_app_bar.dart';
import 'package:flutter_starwars/app/presentation/page/signup/widgets/signup_first_step.dart';
import 'package:flutter_starwars/app/presentation/page/signup/widgets/signup_second_step.dart';
import 'package:flutter_starwars/app/presentation/page/signup/widgets/signup_subtitle.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/signup/signup_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/widget/rounded_button.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // not using get_it because it is ideal to have a new instance whenever you enter the screen
  final SignUpViewModel viewModel = new SignUpViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey23,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Observer(builder: (_) {
            return Column(
              children: <Widget>[
                SignUpAppBar(),
                Spacer(flex: 1),
                SignUpSubtitle(
                  text: viewModel.step == 1
                      ? SIGNUP_PAGE_SUBTITLE_1
                      : viewModel.step == 2 ? SIGNUP_PAGE_SUBTITLE_2 : null,
                ),
                Spacer(flex: 2),
                viewModel.step == 1
                    ? SignUpFirstStep(viewModel: viewModel)
                    : viewModel.step == 2
                        ? SignUpSecondStep(viewModel: viewModel)
                        : null,
                Spacer(flex: 2),
                RoundedButton(
                  onPressed: viewModel.step == 1
                      ? viewModel.firstFormIsCompleted
                          ? () => viewModel.nextStepButton()
                          : null
                      : viewModel.secondFormIsCompleted &&
                              !viewModel.hasErrorOnSecondStep
                          ? () async => await viewModel
                              .signUp(() => Navigator.pop(context))
                          : null,
                  text: viewModel.step == 1
                      ? SIGNUP_BUTTON_TEXT_1
                      : viewModel.step == 2 ? SIGNUP_BUTTON_TEXT_2 : null,
                ),
                Spacer(flex: 1),
              ],
            );
          }),
        ),
      ),
    );
  }
}
