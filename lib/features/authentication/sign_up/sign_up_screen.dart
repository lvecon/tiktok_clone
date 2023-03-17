import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/features/authentication/widgets/auth_button.dart';

import '../../../constants/gaps.dart';
import '../../../constants/sizes.dart';
import '../login/log_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  void onLogInTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const LogInScreen(),
    ));
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
                    'Sign up for TikTok',
                    style: TextStyle(
                        fontSize: Sizes.size24, fontWeight: FontWeight.w700),
                  ),
                  Gaps.v20,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.size28),
                    child: Text(
                      'Create a profile, follow other accounts, make your own videos, and more.',
                      style: TextStyle(
                        fontSize: Sizes.size16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gaps.v40,
                  AuthButton(
                      icon: FaIcon(FontAwesomeIcons.user),
                      text: 'Use phone or email'),
                  Gaps.v2,
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
                    const Text('Already have an account?'),
                    Gaps.h5,
                    GestureDetector(
                      onTap: () => onLogInTap(context),
                      child: Text('Log in',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          )),
                    )
                  ]),
            )));
  }
}
