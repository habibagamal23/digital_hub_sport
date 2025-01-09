import 'package:degitalhubsport/core/theme/style.dart';
import 'package:degitalhubsport/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/Di/di.dart';
import '../logic/auth_cubit.dart';
import '../data/login_repository.dart';
import 'widgets/login_form.dart';
import 'widgets/logo_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocProvider(
        create: (context) => getit<AuthCubit>(),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              verticalSpace(40),
              Text("Login", style: TextStyles.title1B),
              verticalSpace(40),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
