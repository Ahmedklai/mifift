import 'package:flutter/material.dart';
import 'package:mifift/widgets/button.dart';
import 'package:mifift/widgets/text_field.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class RegisterScreen3 extends StatelessWidget {
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
                currentStep: 2,
                size: 3,
                selectedColor: Theme.of(context).primaryColor,
                unselectedColor: Colors.black,
              ),
              SizedBox(height: data.size.height * 0.05),
              Text(
                'Select your goal',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
              ),
              SizedBox(height: data.size.height * 0.05),
              RadioListTile(
                title: Text('Prepare for test'),
                value: 0,
              ),
              RadioListTile(
                title: Text('Prepare for new job'),
                value: 1,
              ),
              RadioListTile(
                title: Text('Improve fitness'),
                value: 0,
              ),
              SizedBox(height: data.size.height * 0.05),
              RoundedButtonWidget(
                buttonColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).hintColor,
                buttonText: ('Finish'),
                onPressed: () {},
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
