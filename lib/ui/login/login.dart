import 'package:flutter/material.dart';
import 'package:mifift/ui/home/home.dart';
import 'package:mifift/ui/login/reset_password.dart';
import 'package:mifift/widgets/button.dart';
import 'package:mifift/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: data.size.height * 0.15),
              Center(
                child: Container(
                    height: data.size.height * 0.2,
                    width: data.size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/Logo.png'),
                      ),
                    )),
              ),
              TextFieldWidget(
                hint: 'User name',
              ),
              TextFieldWidget(
                hint: 'Password',
              ),
              SizedBox(height: data.size.height * 0.05),
              RoundedButtonWidget(
                buttonColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).hintColor,
                buttonText: ('Login'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(builder: (context) => App()),
                  );
                },
              ),
              SizedBox(height: data.size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account? '),
                  InkWell(
                      child: Text(
                    'Sign up',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                        ),
                  )),
                ],
              ),
              SizedBox(height: data.size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot your password? '),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => ResetPasswordScreen()),
                        );
                      },
                      child: Text(
                        'Reset now',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: Theme.of(context).primaryColor,
                              decoration: TextDecoration.underline,
                            ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
