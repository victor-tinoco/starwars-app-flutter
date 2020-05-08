import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/page/forgot_password/widgets/forgot_password_first_step.dart';
import 'package:flutter_starwars/app/presentation/page/forgot_password/widgets/forgot_password_header.dart';
import 'package:flutter_starwars/app/presentation/page/forgot_password/widgets/forgot_password_second_step.dart';
import 'package:flutter_starwars/app/presentation/page/forgot_password/widgets/forgot_password_third_step.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/forgot_password/forgot_password_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/widget/rounded_button.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ForgotPassword {
  Future showBottomSheet(BuildContext context) async {
    ForgotPasswordViewModel _viewModel = ForgotPasswordViewModel();
    final dialogController = SheetController();

    await showSlidingBottomSheet(
      context,
      // The parentBuilder can be used to wrap the sheet inside a parent.
      // This can be for example a Theme or an AnnotatedRegion.
      parentBuilder: (context, sheet) {
        return Theme(
          data: ThemeData.light(),
          child: sheet,
        );
      },
      // The builder to build the dialog. Calling rebuilder on the dialogController
      // will call the builder, allowing react to state changes while the sheet is shown.
      builder: (context) {
        return SlidingSheetDialog(
          controller: dialogController,
          duration: const Duration(milliseconds: 800),
          snapSpec: const SnapSpec(
            snappings: const [
              0.9,
            ],
          ),
          scrollSpec: ScrollSpec.bouncingScroll(),
          color: grey33,
          cornerRadius: TWENTY_SIZE,
          cornerRadiusOnFullscreen: ZERO_SIZE,
          headerBuilder: (context, state) {
            return ForgotPasswordHeader();
          },
          builder: (context, state) {
            return Material(
              color: grey33,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Observer(builder: (_) {
                  return Column(
                    children: <Widget>[
                      SizedBox(height: 33),
                      Container(
                        width: 165,
                        child: Text(
                          _viewModel.step == 1
                              ? FORGOT_PASSWORD_PAGE_SUBTITLE_1
                              : _viewModel.step == 2
                                  ? FORGOT_PASSWORD_PAGE_SUBTITLE_2
                                  : FORGOT_PASSWORD_PAGE_SUBTITLE_3,
                          style: TextStyle(
                            color: grey177,
                            fontFamily: FONT_SF_DISPLAY_PRO,
                            letterSpacing: LETTER_SPACING_24,
                            fontSize: MAIN_FONT_SIZE,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 42),
                      _viewModel.step == 1
                          ? ForgotPasswordFirstStep(viewModel: _viewModel)
                          : _viewModel.step == 2
                              ? ForgotPasswordSecondStep(viewModel: _viewModel)
                              : ForgotPasswordThirdStep(viewModel: _viewModel),
                      RoundedButton(
                        text: _viewModel.step == 1
                            ? FORGOT_PASSWORD_BUTTON_TEXT_1
                            : FORGOT_PASSWORD_BUTTON_TEXT_2,
                        onPressed: () => _viewModel.next(),
                      ),
                    ],
                  );
                }),
              ),
            );
          },
        );
      },
    );
  }
}
