import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/features/authentication/widgets/auth_button.dart';

import '../../../constants/gaps.dart';
import '../../../constants/sizes.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  void onSignUpTab(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: Column(
                children: const [
                  Gaps.v80,
                  Text(
                    'Log in to TikTok',
                    style: TextStyle(
                        fontSize: Sizes.size24, fontWeight: FontWeight.w700),
                  ),
                  Gaps.v28,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.size28),
                    child: Text(
                      'Manage your account, check notifications, comment on videos, and more.',
                      style: TextStyle(
                        fontSize: Sizes.size16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Sizes.size10,
                      horizontal: Sizes.size20,
                    ),
                    child: AuthButton(
                        icon: FaIcon(FontAwesomeIcons.user), text: 'text'),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            elevation: 2,
            color: Colors.grey[100],
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.size20,
              ),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    Gaps.h5,
                    GestureDetector(
                      onTap: () => onSignUpTab(context),
                      child: Text('Sign up',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          )),
                    )
                  ]),
            )));
  }
}
