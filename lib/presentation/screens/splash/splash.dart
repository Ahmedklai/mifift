import 'package:mifift/presentation/home/home.dart';
import 'package:mifift/presentation/login/login.dart';
import 'package:mifift/presentation/register/register1.dart';
import 'package:mifift/widgets/button.dart';
import 'package:mifift/constants/app_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/img_login.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RoundedButtonWidget(
                buttonColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).hintColor,
                buttonText: ('Register'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => RegisterScreen()),
                  );
                },
              ),
              SizedBox(height: 30),
              RoundedButtonWidget(
                buttonColor: Theme.of(context).hintColor,
                textColor: Theme.of(context).primaryColor,
                buttonText: ('Login'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => LoginScreen()),
                  );
                },
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
