import 'package:aya_task/feature/auth/sign_in/controller.dart';
import 'package:aya_task/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

import '../../../widgets/base_button.dart';
part 'units/trade_type_row.dart';

class SigninView extends StatefulWidget {
  const SigninView({Key? key}) : super(key: key);

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  AuthController controller = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Center(
                    child: Image.asset(
                      'assets/images/aya_logo.png',
                      width: sizeFromWidth(context, 3.5),
                    ),
                  ),
                ),
                TradeTypeRowButtons(controller: controller),
                controller.toggle
                    ? const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                        child: Text(
                          'Ready to start Trading with real money ?',
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color(0xff4EA831),
                          ),
                        ),
                      )
                    : const Text('Practise with paper trading'),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Color(0xff4EA831),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const Text('Dont have aacount'),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign up Now',
                            style: TextStyle(
                              color: Color(0xff4EA831),
                            ),
                          ),)
                    ],
                  ),
                ),
                const AppTextField(),
                const AppTextField(isPassword: true),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot your username/password?',
                    style: TextStyle(
                      color: Color(0xff4EA831),
                    ),
                  ),
                ),
                Center(
                  child: BaseButton(
                    height: 55,
                    width: sizeFromWidth(context, 2),
                    onPressed: () {},
                    label: 'LogIn',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
