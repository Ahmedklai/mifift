import 'package:flutter/material.dart';
import 'package:mifift/ui/login/set_new_password.dart';
import 'package:mifift/widgets/button.dart';
import 'package:mifift/widgets/text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
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
                'Reset password',
                style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
              SizedBox(height: data.size.height * 0.09),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Type in the email address for your account to receive a link to reset your password',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ),
              TextFieldWidget(
                hint: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: data.size.height * 0.05),
              RoundedButtonWidget(
                buttonColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).hintColor,
                buttonText: ('Request now'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SetNewPasswordScreen()),
                  );
                },
              ),
              SizedBox(height: data.size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
