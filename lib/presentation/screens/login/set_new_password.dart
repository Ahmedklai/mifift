import 'package:flutter/material.dart';
import 'package:mifift/presentation/widgets/button.dart';
import 'package:mifift/presentation/widgets/text_field.dart';

class SetNewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          elevation: 0,
          toolbarHeight: 50.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: data.size.height * 0.10),
              Text(
                'Set new password',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
              SizedBox(height: data.size.height * 0.09),
              TextFieldWidget(
                hint: 'New password',
                inputType: TextInputType.emailAddress,
              ),
              TextFieldWidget(
                hint: 'Confirm password',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: data.size.height * 0.05),
              RoundedButtonWidget(
                buttonColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).hintColor,
                buttonText: ('Set the new password'),
                onPressed: () {},
              ),
              SizedBox(height: data.size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
