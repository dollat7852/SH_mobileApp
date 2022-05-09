import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sh_capstone2/app/files/signup_page.dart';

import '../start_page.dart';

class CustomFormField extends SizedBox {
  CustomFormField({
    Key? key,
    required String text,
    double? height,
    bool x = false,
  }) : super(
          key: key,
          height: height = 63,
          child: TextFormField(
            decoration: InputDecoration(labelText: text),
            obscureText: x,
          ),
        );
}

class CustomSizedBox extends SizedBox {
  CustomSizedBox({
    Key? key,
    required Widget child,
    double? height,
    bool x = false,
  }) : super(
          key: key,
          height: height = 63,
          child: child,
        );
}

class CustomImageBox extends SizedBox {
  CustomImageBox({
    Key? key,
    Widget? child,
    required String text,
    double? width,
    bool x = false,
  }) : super(
          key: key,
          width: width = 99.0,
          child: Image.asset(
            text,
          ),
        );
}

class CustomTextBox extends SizedBox {
  CustomTextBox({
    Key? key,
    Widget? child,
    required String text,
    double? size = 16,
    bool x = false,
  }) : super(
          key: key,
          child: Align(
            child: Text(
              text,
              style: TextStyle(fontSize: size, fontWeight: FontWeight.w500),
            ),
          ),
        );
}

class CustomLogo extends SizedBox {
  CustomLogo({
    Key? key,
    Widget? child,
    required String logo,
    Color? color = Colors.blue,
    bool x = false,
  }) : super(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(logo),
              const Align(
                  child: Text(
                'REPAIR HOME',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ))
            ],
          ),
        );
}

// clickable text.
class ClickableText extends StatelessWidget {
  const ClickableText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account? ',
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
        children: <TextSpan>[
          TextSpan(
              style: const TextStyle(color: Colors.blueAccent),
              text: 'Sign Up',
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()))),
          TextSpan(
            text: '',
            style: DefaultTextStyle.of(context).style,
          ),
          TextSpan(
              style: const TextStyle(color: Colors.blueAccent),
              text: '',
              recognizer: TapGestureRecognizer()
                ..onTap = () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StartPage()))),
        ],
      ),
    );
  }
}
