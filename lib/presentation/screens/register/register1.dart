import 'package:flutter/material.dart';
import 'package:mifift/presentation/screens/register/register2.dart';
import 'package:mifift/presentation/widgets/button.dart';
import 'package:mifift/presentation/widgets/text_field.dart';

class RegisterScreen extends StatelessWidget {
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
              Center(
                child: Container(
                    height: data.size.height * 0.2,
                    width: data.size.height * 0.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/Logo.png'),
                      ),
                    )),
              ),
              TextFieldWidget(
                hint: 'First name',
              ),
              TextFieldWidget(
                hint: 'Last name',
              ),
              TextFieldWidget(
                hint: 'Username',
              ),
              TextFieldWidget(
                hint: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              TextFieldWidget(
                hint: 'Password',
              ),
              SizedBox(height: data.size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 0,
                    onChanged: _handleRadioValueChange1,
                  ),
                  Text('Already have an account? '),
                ],
              ),
              SizedBox(height: data.size.height * 0.05),
              RoundedButtonWidget(
                buttonColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).hintColor,
                buttonText: ('Continue'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => RegisterScreen2()),
                  );
                },
              ),
              SizedBox(height: data.size.height * 0.05),
              InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          color: Theme.of(context).hintColor,
                          decoration: TextDecoration.underline,
                        ),
                  )),
              SizedBox(height: data.size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? '),
                  InkWell(
                      child: Text(
                    'Go to login',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                        ),
                  )),
                ],
              ),
              SizedBox(height: data.size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}

void _handleRadioValueChange1(int value) {
  if (value == 0) {
    value = 1;
  } else {
    value = 0;
  }
}
