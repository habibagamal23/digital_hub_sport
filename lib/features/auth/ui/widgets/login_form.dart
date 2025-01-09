import 'package:degitalhubsport/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/route/approuter.dart';
import '../../../../core/theme/style.dart';
import '../../../../core/utils/spacing.dart';
import '../../logic/auth_cubit.dart';
import '../../../../core/utils/textfeild.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();


    return Padding(
      padding:  EdgeInsets.all(40.0.sp),
      child: Form(
        key: cubit.formKey,
        child: Column(
          children: [
            CustomTextFormField(
              controller: cubit.emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
                if (!RegExp(r"^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
                  return 'Enter a valid email';
                }
                return null;
              },
            ),
            verticalSpace(16),
            CustomTextFormField(
              controller: cubit.passwordController,
              hintText: 'Password',
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
            verticalSpace(24),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  context.push(ConstantsRoutes.chooseSportScreen);
                } else if (state is AuthError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );
                }
              },
              builder: (context, state) {
                if (state is AuthLoading) {
                  return const CircularProgressIndicator();
                }

                return ElevatedButton(
                  onPressed: () {
                    if (cubit.formKey.currentState!.validate()) {
                      cubit.login();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.mainOrange700,
                    minimumSize: Size(double.infinity, 54.h),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),


                  ),
                  child:  Text('Login' , style: TextStyles.headline),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
