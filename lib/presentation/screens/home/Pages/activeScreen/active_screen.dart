import 'package:flutter/material.dart';
import 'package:mifift/presentation/home/Pages/celebrationScreen/celebration_screen.dart';
import 'package:mifift/presentation/home/home.dart';
import 'package:mifift/presentation/login/reset_password.dart';
import 'package:mifift/widgets/button.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class ActiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    CountDownController _controller = CountDownController();
    int _duration = 5;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: data.size.height * 0.05),
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
            Center(
                child: CircularCountDownTimer(
              duration: _duration,
              controller: _controller,
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,

              color: Theme.of(context).accentColor,
              fillColor: Theme.of(context).primaryColor,
              strokeWidth: 5.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                  fontSize: 33.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.HH_MM_SS,

              isTimerTextShown: true,
              autoStart: false,
              onStart: () {
                print('Countdown Started');
              },

              // This Callback will execute when the Countdown Ends.
              onComplete: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (context) => CelebrationScreen()),
                );
              },
            )),
            RoundedButtonWidget(
              buttonColor: Theme.of(context).primaryColor,
              textColor: Theme.of(context).hintColor,
              buttonText: ('Start'),
              onPressed: () => _controller.start(),
            ),
            SizedBox(height: data.size.height * 0.05),
            RoundedButtonWidget(
                outllined: true,
                buttonColor: Theme.of(context).primaryColor,
                textColor: Theme.of(context).primaryColor,
                buttonText: ('pause'),
                onPressed: () => _controller.pause()),
          ],
        ),
      ),
    );
  }
}
