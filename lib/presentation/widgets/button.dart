import 'package:flutter/material.dart';
import 'package:mifift/constants/sizing_information.dart';

class RoundedButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final bool outllined;
  final bool disabled;
  final VoidCallback onPressed;

  const RoundedButtonWidget({
    Key key,
    @required this.buttonText,
    @required this.buttonColor,
    @required this.textColor,
    @required this.onPressed,
    this.outllined = false,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Center(
      child: outllined
          ? ButtonTheme(
              minWidth: data.size.width * 0.88,
              height: data.size.height * 0.09,
              child: OutlineButton(
                borderSide: BorderSide(
                  color: buttonColor,
                ),
                onPressed: onPressed,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0)),
                child: Text(
                  buttonText,
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: textColor),
                ),
              ))
          : FlatButton(
              color: disabled ? Color(0xFF4E0A0A) : buttonColor,
              onPressed: disabled ? () {} : onPressed,
              minWidth: data.size.width * 0.88,
              height: data.size.height * 0.09,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0)),
              child: Text(
                buttonText,
                style: Theme.of(context).textTheme.button.copyWith(
                    color: disabled ? Colors.white38 : textColor,
                    fontSize: data.size.height * 0.035),
              ),
            ),
    );
  }
}
