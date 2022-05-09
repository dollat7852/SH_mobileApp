// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sh_capstone2/app/files/custom_widget/CustomSizedBox.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOG IN PAGE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('images/logo_blue.png'),
          Align(
              child: Text(
            'REPAIR HOME',
            style: const TextStyle(
              color: Color.fromARGB(255, 31, 49, 157),
              fontSize: 32,
              fontWeight: FontWeight.w400,
            ),
          )),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextBox(
                      text: 'Log in to your account\t\t\t\t\t\t\t\t\t\t\t',
                      size: 20,
                    ),
                    SizedBox(height: 8),
                    CustomFormField(
                      text: 'Email..',
                    ),
                    SizedBox(height: 8),
                    CustomFormField(
                      text: 'Password..',
                      x: true,
                    ),
                    SizedBox(height: 8),
                    CustomSizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign in'),
                      ),
                    ),
                    SizedBox(height: 18),
                    Opacity(
                      opacity: 0.5,
                      child: CustomTextBox(text: '. or sign in with - '),
                    ),
                    SizedBox(height: 8),
                    CustomSizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageBox(
                            text: 'images/google-logo.png',
                          ),
                          CustomImageBox(
                            text: 'images/facebook-logo.png',
                          ),
                          CustomImageBox(
                            text: 'images/twitter-logo.png',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Align(
                      child: Opacity(
                        opacity: 0.5,
                        child: ClickableText(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
