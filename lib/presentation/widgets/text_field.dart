import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final String errorText;
  final TextInputType inputType;
  final TextEditingController textController;
  final EdgeInsets padding;
  final Color hintColor;
  final FocusNode focusNode;
  final ValueChanged onFieldSubmitted;
  final ValueChanged onChanged;
  final bool autoFocus;
  final TextInputAction inputAction;

  const TextFieldWidget({
    Key key,
    this.hint,
    this.errorText,
    this.inputType,
    this.textController,
    this.padding = const EdgeInsets.all(10),
    this.hintColor = Colors.grey,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.autoFocus = false,
    this.inputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: textController,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        autofocus: autoFocus,
        textInputAction: inputAction,
        maxLength: 55,
        keyboardType: this.inputType,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
          hintText: this.hint,
          hintStyle:
              Theme.of(context).textTheme.bodyText1.copyWith(color: hintColor),
          errorText: errorText,
          counterText: '',
        ),
      ),
    );
  }
}
