import 'package:connexo/res/assets_res.dart';
import 'package:connexo/routes/app_routes.dart';
import 'package:connexo/widgets/app_elevated_button.dart';
import 'package:connexo/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetsRes.LOGO),
              const Gap(20),
              const AppTextField(
                title: 'Email',
                hint: 'Enter Email',
                prefix: Icon(Icons.email),
              ),
              const Gap(10),
              const AppTextField(
                title: "Password",
                hint: 'Enter Password',
                prefix: Icon(Icons.lock),
              ),
              const Gap(10),
              AppTextField(
                title: "Timezone",
                hint: 'Select Time Zone',
                onTap: () {},
                readOnly: true,
                prefix: const Icon(Icons.calendar_month),
              ),
              const Gap(20),
              AppElevatedButton(
                onTap: () {
                  context.go(AppRouter.home);
                },
                title: "Login",
              )
            ],
          ),
        ),
      ),
    );
  }
}
