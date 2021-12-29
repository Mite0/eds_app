import 'package:flutter/material.dart';

class TextEdit extends StatelessWidget {
  final String labelText;
  final ValueChanged<String>? fieldSubmitted;
  final String initialState;

  const TextEdit(
      {this.labelText = '',
      required this.fieldSubmitted,
      this.initialState = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          labelText: labelText,
          // labelStyle: const TextStyle(
          //   color: CustomColors.whiteDark,
          // ),
        ),

        initialValue: initialState,
        autocorrect: false,
        // style: Styles.textFieldText,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onChanged: fieldSubmitted,
        onFieldSubmitted: fieldSubmitted,
      ),
    );
  }
}
