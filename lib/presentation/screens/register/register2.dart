import 'package:flutter/material.dart';
import 'package:mifift/presentation/screens/register/register3.dart';
import 'package:mifift/presentation/widgets/button.dart';
import 'package:mifift/presentation/widgets/text_field.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class RegisterScreen2 extends StatelessWidget {
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
        appBar: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          elevation: 0,
          toolbarHeight: 50.0,
        ),
        backgroundColor: Theme.of(context).accentColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StepProgressIndicator(
                totalSteps: 2,
                currentStep: 1,
                size: 3,
                selectedColor: Theme.of(context).primaryColor,
                unselectedColor: Colors.black,
              ),
              SizedBox(height: data.size.height * 0.05),
              Text(
                'General information',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
              TextFieldWidget(
                hint: 'Job',
              ),
              TextFieldWidget(
                hint: 'Gender',
              ),
              TextFieldWidget(
                hint: 'Birthdate',
              ),
              TextFieldWidget(
                hint: 'Weight',
                inputType: TextInputType.emailAddress,
              ),
              TextFieldWidget(
                hint: 'Height',
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
                        builder: (context) => RegisterScreen3()),
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
            ],
          ),
        ),
      ),
    );
  }
}
