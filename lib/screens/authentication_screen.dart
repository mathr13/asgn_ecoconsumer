import 'package:flutter/material.dart';

import '../constants/constant_values_library.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AuthenticationScreenState();
  }
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.primaryFillColour,
      body: Container(
        padding: Paddings.padding1,
        child: Column(
          children: const [
            Spacer(),
            Text(
              DisplayLabels.authMessage,
              style: TextStyles.secondaryHeadlineStyle,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}